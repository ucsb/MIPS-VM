#include<stdio.h>

int main(){
    int arr[5] = {5,4,3,2,1};
    int n=5;
    int min = 999;
    int i;

    for(i=0;i<n;i++){
        if(arr[i]<min){
            min = arr[i];
        }
    }
    printf("Min %d\n", min);
    return 0;
}