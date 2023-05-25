void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    // just loading the numbers
    int a, b;
    _input_int(a);
    _input_int(b);
    // and
    a &= b;
    // or
    b |= 17;
    // final values -> a = 8, b = 25
    _print_int(a);
    _print_int(b);
    return 0;
}