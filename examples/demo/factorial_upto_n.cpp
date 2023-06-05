void _print_int(int& x){
}

void _input_int(int& x){
}

int factorial(int n){
    if(n == 0 || n==1){
        return 1;
    }
    else{
        return n * factorial(n-1);
    }
}

int main(){
    int n,i;
    _input_int(n);

    int ans_arr[n+1];

    for(i=0;i<=n;i++){
        ans_arr[i] = factorial(i);
    }

    for(i=0;i<=n;i++){
        _print_int(ans_arr[i]);
    }
    return 0;
}