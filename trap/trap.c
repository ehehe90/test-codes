#include <stdio.h>
#include <stdlib.h>
void trap() {
  printf("trap!\n");
  exit(1);
}

int main()
{
    asm("# BEGIN_INTERESTING_SECTION");
    printf("a\n");
    asm("# END_INTERESTING_SECTION");
}