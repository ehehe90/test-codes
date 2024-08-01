import re

# アセンブリの命令セット
assembly_instructions = [
    "movzbl  (%rdi,%rsi), %eax",
    "movl 2(%rax,%rdx,10), %eax",
    "movl (%rax,%rdx,4), %ecx",
    "movl %eax, 4(%r11)",
    "movq %rax, 8+new_eth_body(%rip)",
    "movq %rax, -16+aaa(%rip)",
    "movl %edx, (%rax,%rdx,4)"
]

# 間接参照されているアドレスを抽出する関数
def extract_indirect_references(instructions):
    indirect_refs = []
    for instruction in instructions:
        # 正規表現で命令内の間接参照を検索（オフセットも含む）
        # matches = re.findall(r'([-+]?\d*[\w+]*\([^)]+\))', instruction)
        matches = re.search(r'([-+]?\d*[\w+]*\([^)]+\))', instruction)
        print(matches.group(0))
        # indirect_refs.extend(matches)
    return indirect_refs

# 間接参照されているアドレスを抽出
indirect_references = extract_indirect_references(assembly_instructions)
# print(indirect_references)
