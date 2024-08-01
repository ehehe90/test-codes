#include <stdio.h>
#define NFC_UMEM_LOCATION ((void *)(1ull << 41))
#define BUFFER_AREA_SIZE 2147483648

int main() {
    unsigned long long value;
    void *nfc_umem_location = NFC_UMEM_LOCATION; //ssffii2
    void *nfc_umem_location_end = NFC_UMEM_LOCATION + BUFFER_AREA_SIZE;

    asm volatile ("movq %0, %%r12" :: "r" (nfc_umem_location) : "%r12"); //ssffii2
    asm volatile ("movq %0, %%r14" :: "r" (nfc_umem_location_end) : "%r14"); //ssffii2
    asm volatile ("movq %%r12, %0" : "=r" (value) :: "r12");
    printf("value of r12 : %llu\n", value);
    asm volatile ("movq %%r14, %0" : "=r" (value) :: "r14");
    printf("value of r14 : %llu\n", value);


    asm volatile ("xchgq %%r12, %%r14" ::: "r12", "r14");

    asm volatile ("movq %%r12, %0" : "=r" (value) :: "r12");
    printf("value of r12 : %llu\n", value);
    asm volatile ("movq %%r14, %0" : "=r" (value) :: "r14");
    printf("value of r14 : %llu\n", value);

    return 0;
}
