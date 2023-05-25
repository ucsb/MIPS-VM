void _print_int(int& x){
}

void _input_int(int& x){
}


int main(){
    // just loading the numbers
    int a, b, c;
    _input_int(a);
    _input_int(b);
    // if condition
    if(a <= b){
        c = 10;
    }
    else{
        c = 5;
    }
    // ternary operator
    c += a > b ? -5 : 5;
    _print_int(a);
    _print_int(b);
    _print_int(c);
    // final value -> a = 8, b = 20, c = 15
    return 0;
}