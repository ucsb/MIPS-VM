#include<stdio.h>

int main(){
    float a=3.3, b=-1.1;
    float temp;
    //printf("a=%f, b=%f\n",a,b);
    temp = a;
    a = b;
    b = temp;
    //printf("a=%f, b=%f\n",a,b);
    return 0;
}