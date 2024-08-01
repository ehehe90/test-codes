#include<stdio.h>
#include<stdlib.h>

char mora[] = "     ` (#!    `   `....        ...,......TN.`\n      j@`  ``.JgHH=?\"\"W%`     TB\"7!(\"TY` db.\n    `-#!     _ue    ...      `.de.......  .M;\n   ` dD      .dMY9_T\"TMb      ?MY?!_??T#_  dR`\n     W]    `  j#      dD      .Wl     j@`` J@   < I am Winner!!!\n     W]  `    .N+   .(#!       ?N.. .(H'  .W%\n     db. +#WNx _TBD`?=     `     ?!(\"=   .d$\n     .Me Wm(d9       . .. .-. .,        .dD\n      .T\\ _!`       .TH#WHB7HMYWH%     .\"!\n";
void (*fp)();

void win(void){
  printf("%s", mora);
  exit(1);
}

void f1(void){
  printf("In f1\n");
  return;
}

void f2(void){
  printf("In f2\n");
  return;
}

void evil(void){
  char buf[0x10];
  printf("I am evil moratorium.\n");

  fp = ((char*)f2) + 4; // skip endbr
  fp();
  *(unsigned long*)(buf+0x28) = (unsigned long)((char*)&win + 0x4);
}

int main(int argc, char *argv[])
{
  printf("Start\n");

  fp = f1;
  evil();
  printf("CET is winner...\n");

  return 0;
}