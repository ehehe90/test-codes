import re

# アセンブリファイルのパス
input_file_path = 'u_openssl_vpn/u_openssl_vpn.s'
output_file_path = 'u_openssl_vpn/v6-all/u_openssl_vpn.s'



# v6
# 挿入したい命令 (シングル)
instructions_to_insert_single = '''
\tcmp\t\t%r15, %rbx
\tjg\t\t.+27
\tcmp\t\t%r13, %rbx
\tjl\t\t.+12
\tcmp\t\t%r14, %rbx
\tjl\t\t.+17
\tjmp\t\ttrap
\tcmp\t\t%r12, %rbx
\tjl\t\t.+7
\tjmp\t\ttrap
'''
# 挿入したい命令 (マルチ)
instructions_to_insert_multi1 = '''
\tcmp\t\t%r15, %rbx
'''
instructions_to_insert_multi2 = '''
\tcmp\t\t%r13, %rbx
'''
instructions_to_insert_multi3 = '''
\tcmp\t\t%r14, %rbx
\tjl\t\t.+17
\tjmp\t\ttrap
\tcmp\t\t%r12, %rbx
\tjl\t\t.+7
\tjmp\t\ttrap
'''
# instructions_to_insert_multi4 = '''
# \tjmp\t\ttrap
# '''
# instructions_to_insert_multi5 = '''
# \tcmp\t\t%r12, %rbx
# \tjl\t\t.+7
# \tjmp\t\ttrap
# '''



# 挿入する範囲 (開始行、終了行) insert_xor_8
# insert_range_list = [
#     (11, 519),  # nfc_cb
#     (739, 756), # my_htons
#     (757, 1004), # my_memcpy
#     (1005, 1107), # xor_cipher
# ]
insert_range_list = [ # u_openssl_vpn
    (25, 615)
]
 

# メモリアクセスを伴う間接参照を行う命令のリスト (シングル)
memory_access_instructions_single = ['movzbl', 'movb', 'xorb']  # 必要に応じて命令を追加
# メモリアクセスを伴う間接参照を行う命令のリスト (マルチ)
memory_access_instructions_multi = ['movw', 'movzwl', 'movl', 'movq', 'movdqu', 'movdqa', 'movups', 'punpcklwd', 'movaps', 'xorq', 'addq', 'movslq', 'addl']

access_byte_multi = {
    'movw': 1,
    'movzwl':1,
    'movl': 3,
    'movq': 7,
    'movdqu': 15,
    'movdqa': 15,
    'movups' : 15,
    'punpcklwd': 15,
    'movaps': 15,
    'xorq': 7,
    'addl' : 3,
    'movslq': 3,
    'addq': 7,
    'addl': 3
}

# メモリアクセスが発生する間接参照を示す正規表現パターンを生成
memory_access_pattern_single = re.compile(
    r'\b({})\b.*\([%]r[0-9a-z]+(,[%]r[0-9a-z]+,?[0-9]*)?\)'
    .format('|'.join(memory_access_instructions_single)),
    re.IGNORECASE
) 
memory_access_pattern_multi = re.compile(
    r'\b({})\b.*\([%]r[0-9a-z]+(,[%]r[0-9a-z]+,?[0-9]*)?\)'
    .format('|'.join(memory_access_instructions_multi)),
    re.IGNORECASE
)
# 上記の2つは movl	(%rax,%rdx,4), %edx のようなパターンも検出する（多分）

# pattern_source = re.compile(r'(\w+)\s+(-?\d+)?(\+)?([_a-zA-Z][_a-zA-Z0-9]*)?\((%\w+)\)')
# pattern_dest = re.compile(r"(\w+)\s+%.*,\s*([+-]?\d+)?(\+)?(\w*)\((%\w+)\)")
# 上記の2つが検出しない

pattern = r"(\w+)\s+.*?([+-]?\d+)?(\+)?(\w*)?\(([^)]+)\)?(?:,\s*%.*|\s*$)"

# アセンブリファイルを読み込んで処理する
with open(input_file_path, 'r') as file:
    lines = file.readlines()
count = 0
# 出力用のファイルを開く
with open(output_file_path, 'w') as file:
    for i, line in enumerate(lines, start=1):
        # 指定された範囲内で、メモリアクセスが発生する間接参照があるかチェックする
        for start, end in insert_range_list:
            if start <= i <= end:
                if memory_access_pattern_single.search(line):
                    count += 1
                    # 正規表現を使用してメモリアドレス部分を抽出
                    match = None
                    match = re.search(r'(\d*\([^\)]+\))', line)
                    if not match:
                        print(f'error1 at {i} : {line}')
                    # 抽出したメモリアドレス部分
                    memory_address = match.group(1)
                    # 新しい命令を構築
                    new_instruction = f"\tleaq\t{memory_address}, %rbx"
                    insert = new_instruction + instructions_to_insert_single
                    file.write(insert)
                elif memory_access_pattern_multi.search(line):
                    count += 1
                    match = re.search(pattern, line)
                    if match:
                        mnemonic = match.group(1)
                        offset = match.group(2)
                        plus_sign = match.group(3)
                        label = match.group(4)
                        inside_parentheses = match.group(5)
                    else:
                        print(f"error 2 at {i} : {line}")
                        continue

                    # low_addr を構築
                    if label:
                        if offset:
                            low_addr = f"{offset}{plus_sign}{label}({inside_parentheses})"
                        else:
                            low_addr = f"{label}({inside_parentheses})"
                    else:
                        if offset:
                            low_addr = f"{offset}({inside_parentheses})"
                        else:
                            low_addr = f"({inside_parentheses})"
                    # 新しい命令を構築
                    # new_instruction1 = f"\tleaq\t{low_addr}, %rbx"

                    # high_addr を構築
                    if label:
                        if offset:
                            offset2 = int(offset) + access_byte_multi[mnemonic]
                            high_addr = f"{offset2}{plus_sign}{label}({inside_parentheses})"
                        else:
                            offset2 = access_byte_multi[mnemonic]
                            high_addr = f"{offset2}+{label}({inside_parentheses})"
                    else:
                        if offset:
                            offset2 = int(offset) + access_byte_multi[mnemonic]
                            high_addr = f"{offset2}({inside_parentheses})"
                        else:
                            offset2 = access_byte_multi[mnemonic]
                            high_addr = f"{offset2}({inside_parentheses})"
                    # ジャンプオフセットを構築
                    if label:
                        jmp_offset_basic = 7
                    else:
                        match = None
                        match = re.search(r'^\s*%\w+\s*,\s*%\w+(\s*,\s*\d+)?\s*$', inside_parentheses)
                        if match:
                            if offset2 == 0:
                                jmp_offset_basic = 4
                            else:
                                jmp_offset_basic = 5
                        else:  
                            if inside_parentheses == "%rsp":
                                if offset2 == 0:
                                    jmp_offset_basic = 4
                                else:
                                    jmp_offset_basic = 5
                            else:
                                jmp_offset_basic = 4
                    jmp_offset2 = 27 + jmp_offset_basic
                    jmp_offset3 = 12 + jmp_offset_basic
                    # jmp_offset4 = 17 + jmp_offset_basic
                    # 新しい命令を構築
                    # new_instruction2 = f"\tjl\t\t.+{jmp_offset}\n\tleaq\t{high_addr}, %rbx"
                    new_instruction1 = f"\tleaq\t{low_addr}, %rbx"
                    new_instruction2 = f"\tjg\t\t.+{jmp_offset2}"
                    new_instruction3 = f"\tjl\t\t.+{jmp_offset3}\n\tleaq\t{high_addr}, %rbx"
                    # new_instruction4 = f"\tjl\t\t.+{jmp_offset4}"
                    # new_instruction5 = f"\tleaq\t{high_addr}, %rbx"

                    # insert = new_instruction1 + instructions_to_insert_multi1 + new_instruction2 + instructions_to_insert_multi2 + new_instruction3 + instructions_to_insert_multi3 + new_instruction4 + instructions_to_insert_multi4 + new_instruction5 + instructions_to_insert_multi5
                    insert = new_instruction1 + instructions_to_insert_multi1 + new_instruction2 + instructions_to_insert_multi2 + new_instruction3 + instructions_to_insert_multi3
                    file.write(insert)
                break
        

        file.write(line)

print(f"count : {count}")
print(f"Processed file saved as {output_file_path}")
