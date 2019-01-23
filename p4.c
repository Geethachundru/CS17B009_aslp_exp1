#include<stdio.h>
int main(int argv,char*argc[]){

int var1[6]={1,2,3,4,5};
int var2[6]={6,7,8,9,10};
int var3[6],var4[6];
register int i;
for(i=1;i<=6;i++)
{
var3[i]=var1[i];
var4[i]=var2[i];
}
for(i=1;i<=6;i++)
{
var2[i]=var3[i];
var1[i]=var4[i];
}
return 0;
}
