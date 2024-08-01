#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#define NFC_UMEM_LOCATION ((void *)(1ull << 41))
#define BUFFER_AREA_SIZE 2147483648

int main()
{
    // printf("%p\n", NFC_UMEM_LOCATION);
    // int page_size = getpagesize();
    // printf("%d\n", page_size);

    char *data1 = mmap(NFC_UMEM_LOCATION, BUFFER_AREA_SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE, -1 , 0);
    if (data1 != NFC_UMEM_LOCATION) {
        printf("not nfc_umem_location\n");
    }
    return 0;
}