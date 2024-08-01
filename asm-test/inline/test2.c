#define NFC_UMEM_LOCATION ((void *)(1ull << 41))
#define BUFFER_AREA_SIZE 2147483648

int main() {
    void *nfc_umem_location = NFC_UMEM_LOCATION; //ssffii2
    void *nfc_umem_location_end = NFC_UMEM_LOCATION + BUFFER_AREA_SIZE;
    asm volatile ("movq %0, %%r11" :: "r" (nfc_umem_location) : "%r11"); //ssffii2
    asm volatile ("movq %0, %%r14" :: "r" (nfc_umem_location_end) : "%r14"); //ssffii2

    return 0;
}
