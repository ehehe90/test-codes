#include <stdio.h>
int RotWord(int in)
{
  int inw=in,inw2=0;
  unsigned char *cin=(unsigned char*)&inw;
  unsigned char *cin2=(unsigned char*)&inw2;
  cin2[0] = cin[1];
  cin2[1] = cin[2];
  cin2[2] = cin[3];
  cin2[3] = cin[0];
  return(inw2);
}

int main()
{
    int ret;

    ret = RotWord(252579084);
    printf("ret : %d\n", ret);
    ret = RotWord(252579084);
    printf("ret : %d\n", ret);
}