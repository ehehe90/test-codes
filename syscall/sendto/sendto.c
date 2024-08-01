#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

int main() {
    int sockfd;
    struct sockaddr_in servaddr;

    // ソケットの作成
    if ((sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    memset(&servaddr, 0, sizeof(servaddr));

    // サーバ情報の設定
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(12345); // 12345番ポートを利用
    servaddr.sin_addr.s_addr = inet_addr("127.0.0.1"); // 送信先IPはlocalhost

    char *message = "Hello, Server!";
    int messageLength = strlen(message);

    // メッセージをサーバへ送信
    if (sendto(sockfd, (const char *)message, messageLength,
               0, (const struct sockaddr *) &servaddr, 
               sizeof(servaddr)) < 0) {
        perror("sendto failed");
        exit(EXIT_FAILURE);
    }

    printf("Message sent.\n");

    close(sockfd);
    return 0;
}
