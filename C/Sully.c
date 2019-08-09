#include <stdlib.h>
#include <stdio.h>
#define I 5
#define STR(s) #s
#define FILE_NAME(nb) "Sully_"STR(nb)".c"
#define COMMAND "gcc "FILE_NAME(I)
int main(){
char *s = "#include <stdlib.h>%c#include <stdio.h>%c#define I %d%c#define STR(s) #s%c#define FILE_NAME(nb) %cSully_%cSTR(nb)%c.c%c%cint main(){%cchar *s = %c%s%c;%cFILE *fp;%cfp = fopen(FILE_NAME(I), %cw+%c);%c}";
FILE *fp;
fp = fopen(FILE_NAME(I), "w+");
system(COMMAND);
fprintf(fp,s,10,10,I-1,10,10,34,34,34,34,10,10,34,s,34,10,10,34,34,10);
fclose(fp);
}
