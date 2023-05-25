void _print_int(int& x){
}

void _input_int(int& x){
}

void get_sum(int& a, int& b){
    a += b;
}

int main(){
    // just loading the numbers
    int a,b;
    _input_int(a);
    _input_int(b);
    get_sum(b, a);

    _print_int(b);
    _print_int(a);
    // final values -> b = 28, a = 8
    return 0;
}