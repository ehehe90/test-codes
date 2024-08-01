struct tcpopts {
    unsigned int enabled : 1;

    unsigned int check_sport : 1;
    __u16 sport;

    unsigned int check_dport : 1;
    __u16 dport;

    // TCP flags.
    unsigned int check_urg : 1;
    unsigned int urg : 1;

    unsigned int check_ack : 1;
    unsigned int ack : 1;

    unsigned int check_rst : 1;
    unsigned int rst : 1;

    unsigned int check_psh : 1;
    unsigned int psh : 1;

    unsigned int check_syn : 1;
    unsigned int syn : 1;

    unsigned int check_fin : 1;
    unsigned int fin : 1;

    unsigned int check_ece : 1;
    unsigned int ece : 1;

    unsigned int check_cwr : 1;
    unsigned int cwr : 1;
};

struct udpopts
{
    unsigned int enabled : 1;

    unsigned int check_sport : 1;
    __u16 sport;

    unsigned int check_dport : 1;
    __u16 dport;
};

struct icmpopts
{
    unsigned int enabled : 1;

    unsigned int check_code : 1;
    __u8 code;

    unsigned int check_type : 1;
    __u8 type;
};

struct filter {
  /*ethhdr*/
//   unsigned char h_dest[ETH_ALEN];
//   unsigned char h_source[ETH_ALEN];
//   __u16 h_proto;
  /*iphdr*/
//   __u8 protocol;
  __be32 ip_saddr; // こいつらだけビッグエンディアン!
  __be32 ip_daddr;
  int check_tos : 1;
  __u8 tos;
  int check_min_ttl : 1;
  __u8 min_ttl;
  int check_max_ttl : 1;
  __u8 max_ttl;
  int check_min_len : 1;
  __u16 min_len; // 大小比較を行うため，エンディアンをホストに合わせる必要あり
  int check_max_len : 1;
  __u16 max_len; // 同上
  /*ipv6hdr*/
  // TODO
  /*tcphdr*/
  struct tcpopts tcpopts;
  /*udphdr*/
  struct udpopts udpopts;
  /*icmphdr*/
  struct icmpopts icmpopts;
};

// check_{tcp, udp, icmp} はどれか1つになるように