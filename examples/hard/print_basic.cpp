void _input_int(int& x){
    x = 0;
}

void _print_int(int& x){
    x += 0;
}

int main(){
    // just loading the numbers
    int a, b, c;
    _input_int(a);
    _input_int(b);
    _input_int(c);

    _print_int(a);
    _print_int(b);
    _print_int(c);
    return 0;
}