void _print_int(int& x){
}

void _input_int(int& x){
}

int get_sum(int a, int b){
    return a + b;
}

int main(){
    // just loading the numbers
    int a, b;
    _input_int(a);
    _input_int(b);
    int c = get_sum(b, a);

    _print_int(a);
    _print_int(b);
    _print_int(c);
    // final values -> a = 8, b = 20, c = 28
    return 0;
}