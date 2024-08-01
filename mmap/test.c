#include <stdio.h>
#include <sys/mman.h>

#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>


static int xsk_page_aligned(void *buffer)
{
	unsigned long addr = (unsigned long)buffer;

	return !(addr & (getpagesize()));
}

int main()
{
    // printf("0x%llx\n", (1ull<<47)-1);
    // printf("%lld\n", ((1ull<<47)-2147483648)%4096);
    // printf("%d\n", getpagesize());
    void *addr = (void *)((1ull<<47)-2147483648-1);
    if (!xsk_page_aligned(addr)) {
        printf("return\n");
    }
}