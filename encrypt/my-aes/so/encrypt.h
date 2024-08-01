#include <string.h>

int my_encrypt_packet(void *pkt, int len);
int my_decrypt_packet(void *pkt, int len);

#define NB 4                          /* 128bit 固定として規格されている(データの長さ) */
#define NBb 16

extern int Sbox[256];
extern unsigned char key[32];
extern int w[60]; /* FIPS 197 P.19 5.2 Key Expansion */
extern int nr; /* 10,12,14 ラウンド数 */