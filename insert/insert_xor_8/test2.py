import re

def extract_assembly_info(instruction):
    # 正規表現で命令、オフセット、オペレータ、ラベル、括弧内の表現を抽出
    pattern = r"(\w+)\s+.*?([+-]?\d+)?(\+)?(\w*)?\(([^)]+)\)?(?:,\s*%.*|\s*$)"
    match = re.search(pattern, instruction)
    
    print(f"instruction : {instruction}")
    if match:
        # groups = match.groups()
        # # 括弧内の間接参照部分
        # inside_parentheses = groups[-1]
        # # 第一引数がレジスタの場合、そのレジスタ名を取得する
        # first_operand = groups[1].strip(', ').strip() if groups[1] else ''
        # # 残りの部分を整理
        # instruction, _, offset, operator, label = groups[:-1]
        # # オフセットが未指定の場合は '0' を代入
        # offset = offset if offset else '0'
        # # オペレータが未指定の場合は空文字を代入
        # operator = operator if operator else ''
        # # ラベルがNoneの場合は空文字を代入
        # label = label if label else ''
        # return (instruction, first_operand, offset, operator, label, inside_parentheses)
        mnemonic = match.group(1)
        print(f"mnemonic : {mnemonic}")
        # first_operand = match.group(2)
        # if first_operand:
        #     print(f"first_operand : {first_operand}")
        offset = match.group(2)
        if offset:
            print(f"offset : {offset}")
        plus_sign = match.group(3)
        if plus_sign:
            print(f"plus_sign : {plus_sign}")
        label = match.group(4)
        if label:
            print(f"label : {label}")
        inside_parentheses = match.group(5)
        if inside_parentheses:
            print(f"inside_parentheses : {inside_parentheses}")
        print("")
        
    else:
        print("not detected")

# テスト
instructions = [
    "movzbl  (%rdi,%rsi), %eax",
    "movl 2(%rax,%rdx,10), %eax",
    "movl (%rax,%rdx,4), %ecx",  # 間接参照が第一引数にあるケース
    "movl %eax, 4(%r11)",
    "movq %rax, 8+new_eth_body(%rip)",
    "movq %rax, -16+aaa(%rip)",
    "movl %edx, (%rax,%rdx,4)",
    "movq $0, (%rsp)"
]

for instr in instructions:
    extract_assembly_info(instr)
