#include <stdio.h>

int main(){
    int n;
    int fib0=0, fib1=1;
    int val =0;
    int i;
    if(n==0){
        printf("%d\n", fib0);
    }
    else if (n==1)
    {
        printf("%d\n", fib1);  
    }
    else{
        for(i=2;i<=n;i++){
            val = fib0 +fib1;
            fib0 = fib1;
            fib1= val;
        }
        printf("%d\n",val);
    }
    return 0;
}