void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    // just loading the numbers
    int a, b, c, d;
    _input_int(a);
    _input_int(b);

    // left shift
    c = a >> 2;
    // right shift
    d = b << 2;
    // final values -> a = 8, b = 20, c = 2, d = 80
    _print_int(a);
    _print_int(b);
    _print_int(c);
    _print_int(d);
    return 0;
}