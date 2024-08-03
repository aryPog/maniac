#include <stdio.h>

#ifdef DEBUG_FLAG
#define DEBUG 1
#else
#define DEBUG 0
#endif

/* make DEBUG=1 clean-all && ./maniac */
int main()
{
  if (DEBUG)
    printf("sex\n");
}