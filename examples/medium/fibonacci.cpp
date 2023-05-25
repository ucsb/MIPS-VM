void _print_int(int& x){
}

void _input_int(int& x){
}

int fibonacci(int n){
    if(n<=2){
        return 1;
    }
    return fibonacci(n-1) + fibonacci(n-2);
}

int main(){
    int a,b;
    _input_int(a);
    _input_int(b);

    a= fibonacci(5);
    b= fibonacci(10);
    int c = a - b;
    _print_int(a);
    _print_int(b);
    _print_int(c);
    // final values -> a = 5, b = 55, c = -50
}