int main() {
    asm("# BEGIN_INTERESTING_SECTION");
    int x = 5;
    int y = x + 2;
    asm("# END_INTERESTING_SECTION");
    return 0;
}

