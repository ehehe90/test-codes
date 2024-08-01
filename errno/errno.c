#include <stdio.h>
#include <errno.h>
#include <string.h>

int main() {
    FILE *file;

    // 存在しないファイルを開こうとする
    file = fopen("nonexistent_file.txt", "r");
    if (file == NULL) {
        // エラーが発生した場合、errno にエラーコードがセットされる
        printf("Error opening file: %s\n", strerror(errno));
        // errno のアドレスを出力
        printf("Address of errno: %p\n", (void*)&errno);
    } else {
        // ファイルが開けた場合
        fclose(file);
    }

    return 0;
}
