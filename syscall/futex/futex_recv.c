/*
 * FUTEX_FD するとfdが取得できて, pollで監視可能になる.
 * XSK fdと同時に管理可能じゃん
 */
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/syscall.h>
#include <linux/futex.h>
#include <signal.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>

int sys_futex(int *uaddr, int op, int val) {
  return syscall(SYS_futex, uaddr, op, val, NULL, NULL, 0);
}

void *setup(char *path) {
  int fd = -1;
  void *map = NULL;
  int size;

  fd = open(path, O_RDWR | O_CREAT, 0600);
  if (fd < 0) {
    printf("Error: open\n");
    goto error;
  }

  size = sizeof(int);
  if (ftruncate(fd, size)) {
    printf("Error: ftruncate\n");
    goto error;
  }

  map = mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
  if (map == MAP_FAILED) {
    printf("Error: mmap\n");
    map = NULL;
    goto error;
  }

  return map;
error:
  if (map)
    munmap(map, size);
  if (fd >= 0)
    close(fd);
  return NULL;
}

void recv(void *map) {
  int ret, old;
  int *flag = map;

  *flag = 0;
  // software memory barrier
  old = *flag;
  if (old != 0) {
    printf("flag[%d] is not 0.", old);
    return;
  }

  ret = sys_futex(flag, FUTEX_WAIT, 0); // 0でなくなれば起床

  if (ret == -1) {
    if (errno == EAGAIN) {
      perror("interrupted?: ");
    } else {
      perror("futex(WAKE) returns unexpected error: ");
    }
  } else {
    printf("SUCCESS: %d\n", *flag);
  }
}

int main() {
  void *map;
  map = setup("futex_test_shm");
  if (!map) {
    printf("setup is failed.");
    return 1;
  }
  recv(map);
  return 0;
}
