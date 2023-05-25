void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    // just loading the numbers
    int a,n;
     _input_int(a);
     _input_int(n);
    for(int i=1; i<=n; i++){
        a+=i;
    }
    _print_int(a);
    // final values -> a = 21
    return 0;
}