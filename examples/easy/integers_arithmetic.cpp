void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    // just loading the numbers
    int a, b, c;
    _input_int(a);
    _input_int(b);
    _input_int(c);
    // add
    a++;
    b += a;
    // sub
    c--;
    a -= c;
    
    _print_int(a);
    _print_int(b);
    _print_int(c);
    // final values -> a = 15, b = 29, c = -6
    return 0;
}