/*
	Commentaire
*/
#include<stdio.h>
void fn(){char*a="/*%c	Commentaire%c*/%c#include<stdio.h>%cvoid fn(){char*a=%c%s%c;printf(a,10,10,10,10,34,a,34,10,10,10,10,10);}%cint main(){%c/*%c	Commentaire2%c*/%cfn();}";printf(a,10,10,10,10,34,a,34,10,10,10,10,10);}
int main(){
/*
	Commentaire2
*/
fn();}