#include <unistd.h>

int main() {
    char s[3];
    int i = 15;
    s[0] = i / 10 + '0';
    s[1] = i % 10 + '0';
    s[2] = '\n';
    syscall(1, 1, s, 3);
    // write(1, s, 3);
}

// gcc write.c -S -o write.s -ffixed-r11 -ffixed-r12 -ffixed-r13 -ffixed-r14 -ffixed-r15
// gcc -nostdlib write.s -o write -g -l/home/tmp/myglib/include -L/home/tmp/myglib/lib /home/tmp/myglib/lib/crt1.o /home/tmp/myglib/lib/crti.o -lc /home/tmp/myglib/lib/crtn.o -Wl,-rpath=/home/tmp/myglib/lib