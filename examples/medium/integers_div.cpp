void _input_int(int& x){
}

void _print_int(int& x){
}

int main(){
    int a, b;
    _input_int(a);
    _input_int(b);
    int quotient = b / a;
    int remainder = b % a;
    _print_int(quotient);
    _print_int(remainder);
}