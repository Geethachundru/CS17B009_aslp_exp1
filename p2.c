#include<stdio.h>
int main(int argv,char*argc[]){

int var1[6]={2,5,8,6,9,4};
register int i;
for(i=0;i<6;i++)
{
var1[i]=var1[i]+1;
}
return 0;
}
