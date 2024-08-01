#include <stdio.h>
#include <stdlib.h>
#include <net/ethernet.h>
#include <linux/ip.h> // iphdr
#include <linux/ipv6.h> //ipv6hdr
#include <linux/udp.h> // udphdr
#include <linux/tcp.h> // tcphdr
#include <linux/icmp.h> // icmphdr
#include <linux/icmpv6.h> // icmp6hdr
#include <arpa/inet.h> //ntohs

int main()
{
    struct in_addr addr;
    if (inet_pton(AF_INET, "10.10.0.109", &addr) < 1) {
    perror("inet_pton");
    return -1;
    }
    printf("0x%x\n", addr.s_addr);
    return 0;
}