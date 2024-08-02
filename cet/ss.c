#include<stdio.h>
#include<stdlib.h>
#include <errno.h>

#define ARCH_X86_CET_STATUS		0x3001
#define ARCH_X86_CET_DISABLE		0x3002
#define ARCH_X86_CET_LOCK		0x3003
#define ARCH_X86_CET_ALLOC_SHSTK	0x3004
#define ARCH_X86_CET_ENABLE		0x3005
#define GNU_PROPERTY_X86_FEATURE_1_IBT		0x00000001
#define GNU_PROPERTY_X86_FEATURE_1_SHSTK	0x00000002
#define __NR_arch_prctl 158


char mora[] = "     ` (#!    `   `....        ...,......TN.`\n      j@`  ``.JgHH=?\"\"W%`     TB\"7!(\"TY` db.\n    `-#!     _ue    ...      `.de.......  .M;\n   ` dD      .dMY9_T\"TMb      ?MY?!_??T#_  dR`\n     W]    `  j#      dD      .Wl     j@`` J@   < I am Winner!!!\n     W]  `    .N+   .(#!       ?N.. .(H'  .W%\n     db. +#WNx _TBD`?=     `     ?!(\"=   .d$\n     .Me Wm(d9       . .. .-. .,        .dD\n      .T\\ _!`       .TH#WHB7HMYWH%     .\"!\n";

void win(void){
  printf("%s", mora);
  exit(1);
}

void evil(void){
  char buf[0x10];
  printf("I am evil moratorium.\n");

  *(unsigned long*)(buf+0x28) = (unsigned long)((char*)&win + 0x4);
}


int main(int argc, char *argv[])
{
  long ret;
  asm volatile (
    "syscall"
    : "=a"(ret)
    : "0"(__NR_arch_prctl), "D"(ARCH_X86_CET_ENABLE), "S"(GNU_PROPERTY_X86_FEATURE_1_SHSTK)
    : "rcx", "r11", "memory"
  );

  if (ret != 0) {
      perror("arch_prctl ARCH_X86_CET_ENABLE failed");
      return 1;
  }
  printf("Start\n");

  evil();
  printf("CET is winner...\n");

  if (arch_prctl(ARCH_X86_CET_DISABLE, GNU_PROPERTY_X86_FEATURE_1_SHSTK) != 0) {
        perror("arch_prctl ARCH_X86_CET_DISABLE failed");
        return 1;
    }

  return 0;
}
