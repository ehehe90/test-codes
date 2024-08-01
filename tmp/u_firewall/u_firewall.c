#include <net/ethernet.h>
#include <linux/ip.h> // iphdr
#include <linux/ipv6.h> //ipv6hdr
#include <linux/udp.h> // udphdr
#include <linux/tcp.h> // tcphdr
#include <linux/icmp.h> // icmphdr
#include <linux/icmpv6.h> // icmp6hdr
#include <arpa/inet.h> //ntohs

#include "nf/user/nfc.h"
#include "nf/user/pkt_ops.h"
#include "logger.h"
#include "u_firewall.h"

#define MAX_FILTER_NUM 16

struct filter filters[MAX_FILTER_NUM];
int filter_num;
int tmp1 = 0;

void trap() {
  printf("trap!\n");
  exit(1);
}

uint16_t my_htons(uint16_t hostshort) {
    return ((hostshort & 0xff) << 8) | ((hostshort & 0xff00) >> 8);
}

uint16_t my_ntohs(uint16_t netshort) {
    return ((netshort & 0xff) << 8) | ((netshort & 0xff00) >> 8);
}

int nfc_cb(void *pkt, u32 len);

int setup_rules() {
  struct in_addr saddr, daddr;
  /* 1つ目のルール */
  if (inet_pton(AF_INET, "10.10.1.201", &saddr) < 1) {
    perror("inet_pton");
    return -1;
  }
  if (inet_pton(AF_INET, "10.10.0.109", &daddr) < 1) {
    perror("inet_pton");
    return -1;
  }
  int i;
  for (i = 0; i < MAX_FILTER_NUM - 1; i++){
    filters[i].ip_saddr = saddr.s_addr;
    filters[i].ip_daddr = daddr.s_addr;
    filters[i].check_tos = 1;
    filters[i].tos = 0;
    filters[i].check_min_ttl = 1;
    filters[i].min_ttl = 40;
    filters[i].check_max_ttl = 1;
    filters[i].max_ttl = 80;
    filters[i].check_min_len = 1;
    filters[i].min_len = 30;
    filters[i].check_max_len = 1;
    filters[i].max_len = 50;
    filters[i].tcpopts.enabled = 0;
    filters[i].udpopts.enabled = 1;
    filters[i].udpopts.check_sport = 1;
    filters[i].udpopts.sport = 1234;
    filters[i].udpopts.check_dport = 1;
    filters[i].udpopts.dport = 320;
    filters[i].icmpopts.enabled = 0;
  }
  /* 2つ目のルール for moongen*/
  if (inet_pton(AF_INET, "10.10.1.201", &saddr) < 1) {
    perror("inet_pton");
    return -1;
  }
  filters[MAX_FILTER_NUM - 1].ip_saddr = saddr.s_addr;
  if (inet_pton(AF_INET, "10.10.0.109", &daddr) < 1) {
    perror("inet_pton");
    return -1;
  }
  filters[MAX_FILTER_NUM - 1].ip_daddr = daddr.s_addr;
  filters[MAX_FILTER_NUM - 1].check_tos = 1;
  filters[MAX_FILTER_NUM - 1].tos = 0;
  filters[MAX_FILTER_NUM - 1].check_max_ttl = 1;
  filters[MAX_FILTER_NUM - 1].min_ttl = 40;
  filters[MAX_FILTER_NUM - 1].check_max_ttl = 1;
  filters[MAX_FILTER_NUM - 1].max_ttl = 80;
  filters[MAX_FILTER_NUM - 1].check_min_len = 1;
  filters[MAX_FILTER_NUM - 1].min_len = 30;
  filters[MAX_FILTER_NUM - 1].check_max_len = 1;
  filters[MAX_FILTER_NUM - 1].max_len = 50;
  filters[MAX_FILTER_NUM - 1].tcpopts.enabled = 0;
  filters[MAX_FILTER_NUM - 1].udpopts.enabled = 1;
  filters[MAX_FILTER_NUM - 1].udpopts.check_sport = 1;
  filters[MAX_FILTER_NUM - 1].udpopts.sport = 1234;
  filters[MAX_FILTER_NUM - 1].udpopts.check_dport = 1;
  filters[MAX_FILTER_NUM - 1].udpopts.dport = 319;
  filters[MAX_FILTER_NUM - 1].icmpopts.enabled = 0;

  /*2つめのルール for ping_like_udp*/
  /*そのまま使うの注意!*/
  // if (inet_pton(AF_INET, "10.10.0.201", &ip_addr) < 1) {
  //   perror("inet_pton");
  //   return -1;
  // }
  // filters[1].ip_saddr = ip_addr.s_addr;
  // if (inet_pton(AF_INET, "10.10.0.109", &ip_addr) < 1) {
  //   perror("inet_pton");
  //   return -1;
  // }
  // filters[1].ip_daddr = ip_addr.s_addr;
  // filters[1].tos = 0;
  // filters[1].min_ttl = 40;
  // filters[1].max_ttl = 80;
  // filters[1].min_len = 30;
  // filters[1].max_len = 50;
  // filters[1].tcpopts.enabled = 0;
  // filters[1].udpopts.enabled = 1;
  // filters[1].udpopts.sport = 9999;
  // filters[1].udpopts.dport = 8080;
  // filters[1].icmpopts.enabled = 0;

  filter_num = MAX_FILTER_NUM;
}

int main() {
  int ret;

  setup_rules();
  print_debug("Start");
  nfc_create_poll_thread();
  ret = nfc_run(nfc_cb);
  print_debug("nfc_run: %d", ret);
  return 0;
}

int nfc_cb(void *pkt, u32 len) {
  /* no operation */
  struct ethhdr *eth;
  struct iphdr *iph = NULL;
  struct ipv6hdr *iph6 = NULL;
  struct tcphdr *tcph = NULL;
  struct udphdr *udph = NULL;
  struct icmphdr *icmph = NULL;
  struct icmp6hdr *icmp6h = NULL;
  int i;
  eth = (struct ethhdr *)pkt;
  if (eth->h_proto == my_htons(ETH_P_IP)) { 
    iph = (struct iphdr *)(pkt + sizeof(struct ethhdr));
    switch (iph->protocol) {
      case IPPROTO_TCP:
        tcph = (struct tcphdr *)(pkt + sizeof(struct ethhdr) + sizeof(struct iphdr));
        break;
      case IPPROTO_UDP:
        udph = (struct udphdr *)(pkt + sizeof(struct ethhdr) + sizeof(struct iphdr));
        break;
      case IPPROTO_ICMP:
        icmph = (struct icmphdr *)(pkt + sizeof(struct ethhdr) + sizeof(struct iphdr));
        break;
    }
  } else if (eth->h_proto == my_htons(ETH_P_IPV6)) {
    iph6 = (struct ipv6hdr *)(pkt + sizeof(struct ethhdr));
    switch (iph6->nexthdr) {
      case IPPROTO_TCP:
        tcph = (struct tcphdr *)(pkt + sizeof(struct ethhdr) + sizeof(struct ipv6hdr));
        break;
      case IPPROTO_UDP:
        udph = (struct udphdr *)(pkt + sizeof(struct ethhdr) + sizeof(struct ipv6hdr));
        break;
      case IPPROTO_ICMP:
        icmph = (struct icmphdr *)(pkt + sizeof(struct ethhdr) + sizeof(struct ipv6hdr));
        break;
      case IPPROTO_ICMPV6:
        icmp6h = (struct icmp6hdr *)(pkt + sizeof(struct ethhdr) + sizeof(struct ipv6hdr));
        break;
    }
  } else {
    return PASS;
  }
  // if (tmp < 100) {
  //   printf("------ip header------\n");
  //   printf("source IP address: %d.%d.%d.%d\n", iph->saddr & 0xFF, (iph->saddr >> 8) & 0xFF,
  //                   (iph->saddr >> 16) & 0xFF, (iph->saddr >> 24) & 0xFF);
  //   printf("dest IP address: %d.%d.%d.%d\n", iph->daddr & 0xFF, (iph->daddr >> 8) & 0xFF,
  //                     (iph->daddr >> 16) & 0xFF, (iph->daddr >> 24) & 0xFF);
  //   printf("tos : %d\n", iph->tos);
  //   printf("ttl : %d\n", iph->ttl);
  //   printf("len : %d\n", ntohs(iph->tot_len));
  //   printf("------udp header------\n");
  //   printf("source port : %d\n", ntohs(udph->source));
  //   printf("dest port : %d\n", ntohs(udph->dest));
  //   tmp++;
  // }

  for (i = 0; i < filter_num; i++) {
    struct filter filter = filters[i];
    if (iph != NULL) {
      if (filter.ip_saddr && iph->saddr != filter.ip_saddr) //TODO エンディアン?
        continue;
      if (filter.ip_daddr && iph->daddr != filter.ip_daddr)
        continue;
      // TODO ALLOWSINGLEIPV4V6 への対応
      if (filter.check_tos && iph->tos != filter.tos)
        continue;
      if (filter.check_min_ttl && iph->ttl < filter.min_ttl)
        continue;
      if (filter.check_max_ttl && iph->ttl > filter.max_ttl)
        continue;
      if (filter.check_min_len && my_ntohs(iph->tot_len) < filter.min_len)
        continue;
      if (filter.check_max_len && my_ntohs(iph->tot_len) > filter.max_len)
        continue;
    } else if (iph6 != NULL) {
      ;
    }
    if (filter.tcpopts.enabled) {
      if (tcph == NULL) 
        continue;
      if (filter.tcpopts.check_sport && my_htons(filter.tcpopts.sport) != tcph->source)
        continue;
      if (filter.tcpopts.check_dport && my_htons(filter.tcpopts.dport) != tcph->dest)
        continue;
      if (filter.tcpopts.check_urg && filter.tcpopts.urg != tcph->urg)
        continue;
      if (filter.tcpopts.check_ack && filter.tcpopts.ack != tcph->ack)
        continue;
      if (filter.tcpopts.check_rst && filter.tcpopts.rst != tcph->rst)
        continue;
      if (filter.tcpopts.check_psh && filter.tcpopts.psh != tcph->psh)
        continue;
      if (filter.tcpopts.check_syn && filter.tcpopts.syn != tcph->syn)
        continue;
      if (filter.tcpopts.check_fin && filter.tcpopts.fin != tcph->fin)
        continue;
      if (filter.tcpopts.check_ece && filter.tcpopts.ece != tcph->ece)
        continue;
      if (filter.tcpopts.check_cwr && filter.tcpopts.cwr != tcph->cwr)
        continue;
    } else if (filter.udpopts.enabled) {
      if (udph == NULL)
        continue;
      // if (tmp1 < 300) {
      //   printf("i at before : %d\n", i);
      //   // printf("htons(filter.udpopts.dport) : %d\n", htons(filter.udpopts.dport));
      //   // printf("udph->dest : %d\n", udph->dest);
      //   tmp1++;
      // }
      if (filter.udpopts.check_sport && my_htons(filter.udpopts.sport) != udph->source)
        continue;
      if (filter.udpopts.check_dport && my_htons(filter.udpopts.dport) != udph->dest)
        continue;
      // asm("# BEGIN_INTERESTING_SECTION");
      if (tmp1 < 10) {
        printf("i at after : %d\n", i);
        tmp1++;
      }
      // asm("# END_INTERESTING_SECTION");
    } else if (filter.icmpopts.enabled) {
      if (icmph != NULL) {
        if (filter.icmpopts.check_code && filter.icmpopts.code != icmph->code)
          continue;
        if (filter.icmpopts.check_type && filter.icmpopts.type != icmph->type)
          continue;
      } else if (icmp6h != NULL) {
        if (filter.icmpopts.check_code && filter.icmpopts.code != icmp6h->icmp6_code)
          continue;
        if (filter.icmpopts.check_type && filter.icmpopts.type != icmp6h->icmp6_type)
          continue;
      } else {
        continue;
      }
    } else {
      continue;
    }
    // if (tmp1 < 100) {
    //   printf("DROP\n");
    //   tmp1++;
    // }
    return DROP;
  }
  // if (tmp < 100) {
  //   printf("PASS\n");
  //   tmp++;
  // }
  return PASS;
}
