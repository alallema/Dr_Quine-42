#include <stdio.h>
#define S "#include <stdio.h>%c#define S %c%s%c%c#define GRACE_FILE %cGrace_kid.c%c%c#define MAIN int main(){FILE * fp;fp = fopen(GRACE_FILE, %cw+%c);fprintf(fp,S,10,34,S,34,10,34,34,10,34,34,10);fclose(fp);}%cMAIN"
#define GRACE_FILE "Grace_kid.c"
#define MAIN int main(){FILE * fp;fp = fopen(GRACE_FILE, "w+");fprintf(fp,S,10,34,S,34,10,34,34,10,34,34,10);fclose(fp);}
MAIN