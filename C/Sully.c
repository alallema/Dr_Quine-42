#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
int i = 5;
int main()
{if (i > 0)
{char filename[10];sprintf(filename, "Sully_%d.c", i);
if (access(filename, F_OK ) != -1){i--;sprintf(filename, "Sully_%d.c", i);}
FILE *fp;
sprintf(filename, "Sully_%d.c", i);
fp = fopen(filename, "w+");
char *s = "#include <stdlib.h>%c#include <unistd.h>%c#include <stdio.h>%cint i = %d;%cint main()%c{if (i > 0)%c{char filename[10];sprintf(filename, %cSully_%cd.c%c, i);%cif (access(filename, F_OK ) != -1){i--;sprintf(filename, %cSully_%cd.c%c, i);}%cFILE *fp;%csprintf(filename, %cSully_%cd.c%c, i);%cfp = fopen(filename, %cw+%c);%cchar *s = %c%s%c;%cfprintf(fp,s,10,10,10,i,10,10,10,34,37,34,10,34,37,34,10,10,34,37,34,10,34,34,10,34,s,34,10,10,10,34,37,37,37,34,10);%cfclose(fp);%cchar command[50];sprintf(command,%cgcc %cs -o Sully_%cd && ./Sully_%cd%c,filename,i,i);%csystem(command);}}";
fprintf(fp,s,10,10,10,i,10,10,10,34,37,34,10,34,37,34,10,10,34,37,34,10,34,34,10,34,s,34,10,10,10,34,37,37,37,34,10);
fclose(fp);
char command[50];sprintf(command,"gcc %s -o Sully_%d && ./Sully_%d",filename,i,i);
system(command);}}