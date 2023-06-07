void _print_int(int& x){
}

void _input_int(int& x){
}

void _print_string(char *str_data){
}

int factorial(int n){
    if(n==0 || n==1){
        return 1;
    }
    else{
        return n * factorial(n-1);
    }
}

int main(){
    _print_string("Enter the number to find the factorial for:\n");
    int n;
    _input_int(n);
    int ans = factorial(n);
    _print_string("The factorial value is:\n");
    _print_int(ans);
    return 0;
}