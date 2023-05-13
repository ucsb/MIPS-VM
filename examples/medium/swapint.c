#include<stdio.h>

int main(){
    int a=3, b=1;
    printf("a=%d, b=%d\n",a,b);
    a = a-b; //a=2 b=1
    b = b+a; //a=2 b=3
    a = b-a; //a=1 b=3
    printf("a=%d, b=%d\n",a,b);
    return 0;
}