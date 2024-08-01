import re

# アセンブリファイルのパス
input_file_path = 'u_vpn/u_vpn.s'
output_file_path = 'output.s'

# v4
# 挿入したい命令 (シングル)
# instructions_to_insert_single = '''
# \tcmp\t%r12, %rbx
# \tjl\t.+25
# \tcmp\t%r15, %rbx
# \tjg\t.+20
# \tcmp\t%r13, %rbx
# \tjl\ttrap
# \tcmp\t%r14, %rbx
# \tjg\ttrap
# '''
# # 挿入したい命令 (マルチ)
# instructions_to_insert_multi1 = '''
# \tcmp\t%r12, %rbx
# \tjl\t.+29
# \tcmp\t%r15, %rbx
# \tjg\t.+24
# \tcmp\t%r13, %rbx
# \tjl\ttrap
# '''
# instructions_to_insert_multi2 = '''
# \tcmp\t%r14, %rbx
# \tjg\ttrap 
# '''

# v5
instructions_to_insert_single = '''
\tcmp\t\t%r13, %rbx
\tjl\t\t.+9
\tcmp\t\t%r14, %rbx
\tjg\t\t.+14
\tjmp\t\t.+22
\tcmp\t\t%r12, %rbx
\tjl\t\t.+17
\tjmp\t\ttrap
\tcmp\t\t%r15, %rbx
\tjg\t\t.+7
\tjmp\t\ttrap
'''
# 挿入したい命令 (マルチ)
instructions_to_insert_multi1 = '''
\tcmp\t\t%r13, %rbx
'''
instructions_to_insert_multi2 = '''
\tcmp\t\t%r14, %rbx
\tjg\t\t.+14
\tjmp\t\t.+22
\tcmp\t\t%r12, %rbx
\tjl\t\t.+17
\tjmp\t\ttrap
\tcmp\t\t%r15, %rbx
\tjg\t\t.+7
\tjmp\t\ttrap
'''




# 挿入する範囲 (開始行、終了行)
insert_range_list = [
    (494, 667), # SubBytes
    (668, 783), # ShiftRows
    (784, 881), # mul
    (882, 901), # dataget
    (902, 1911), # MixColumns
    (1912, 2544), # Cipher
    (2543, 2978), # nfc_cb
    (2979, 3062), # AddRoundKey
    (3137, 3193) # RotWord
]
 

# メモリアクセスを伴う間接参照を行う命令のリスト (シングル)
memory_access_instructions_single = ['movzbl', 'movb']  # 必要に応じて命令を追加
# メモリアクセスを伴う間接参照を行う命令のリスト (マルチ)
memory_access_instructions_multi = ['movw', 'movzwl', 'movl', 'movq', 'movdqu', 'movdqa', 'movups', 'punpcklwd']

access_byte_multi = {
    'movw': 2,
    'movzwl': 2,
    'movl': 4,
    'movq': 8,
    'movdqu': 16,
    'movdqa': 16,
    'movups' : 16,
    'punpcklwd': 16
}

# メモリアクセスが発生する間接参照を示す正規表現パターンを生成
memory_access_pattern_single = re.compile(
    r'\b({})\b.*\([%]r[0-9a-z]+\)'
    .format('|'.join(memory_access_instructions_single)),
    re.IGNORECASE
)
memory_access_pattern_multi = re.compile(
    r'\b({})\b.*\([%]r[0-9a-z]+\)'
    .format('|'.join(memory_access_instructions_multi)),
    re.IGNORECASE
)

pattern_source = re.compile(r'(\w+)\s+(-?\d+)?(\+)?([_a-zA-Z][_a-zA-Z0-9]*)?\((%\w+)\)')
pattern_dest = re.compile(r"(\w+)\s+%.*,\s*([+-]?\d+)?(\+)?(\w*)\((%\w+)\)")

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
                    match = re.search(r'(\d*\(%r[0-9a-z]+\))', line)
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
                    match = pattern_source.search(line)
                    if match:
                        mnemonic = match.group(1)
                        offset = match.group(2)
                        plus_sign = match.group(3)
                        label = match.group(4)
                        reg = match.group(5)
                    else:
                        match = pattern_dest.search(line)
                        if match:
                            mnemonic = match.group(1)
                            offset = match.group(2)
                            plus_sign = match.group(3)
                            label = match.group(4)
                            reg = match.group(5)
                        else:
                            print(f"error 2 at {i} : {line}")
                            continue

                    # 間接参照先を構築
                    if label:
                        jmp_offset = 7
                        if offset:
                            memory_address1 = f"{offset}{plus_sign}{label}({reg})"
                        else:
                            memory_address1 = f"{label}({reg})"
                    else:
                        if offset:
                            memory_address1 = f"{offset}({reg})"
                        else:
                            memory_address1 = f"({reg})"
                        if reg == "rsp":
                            jmp_offset = 5
                        else:
                            jmp_offset = 4
                    # 新しい命令を構築
                    new_instruction1 = f"\tleaq\t{memory_address1}, %rbx"

                    # 間接参照先を構築
                    if label:
                        if offset:
                            offset2 = int(offset) + access_byte_multi[mnemonic]
                            memory_address2 = f"{offset2}{plus_sign}{label}({reg})"
                        else:
                            offset2 = access_byte_multi[mnemonic]
                            memory_address2 = f"{offset2}+{label}({reg})"
                    else:
                        if offset:
                            offset2 = int(offset) + access_byte_multi[mnemonic]
                            memory_address2 = f"{offset2}({reg})"
                        else:
                            offset2 = access_byte_multi[mnemonic]
                            memory_address2 = f"{offset2}({reg})"
                    # ジャンプオフセットを構築
                    if label:
                        jmp_offset = 9 + 7
                    else:
                        if reg == "rsp":
                            jmp_offset = 9 + 5
                        else:
                            jmp_offset = 9 + 4
                    # 新しい命令を構築
                    new_instruction2 = f"\tjl\t\t.+{jmp_offset}\n\tleaq\t{memory_address2}, %rbx"

                    insert = new_instruction1 + instructions_to_insert_multi1 + new_instruction2 + instructions_to_insert_multi2
                    file.write(insert)
                break
        

        file.write(line)

print(f"count : {count}")
print(f"Processed file saved as {output_file_path}")
