#include <stdio.h>
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
    printf("sizeof(ethhdr) : %ld\n", sizeof(struct ethhdr));
    printf("sizeof(iphdr) :  %ld\n", sizeof(struct iphdr));
}