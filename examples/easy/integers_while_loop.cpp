void _print_int(int& x){
}

void _input_int(int& x){
}
int main(){
    // just loading the numbers
    int a, c;
    _input_int(a);
    _input_int(c);
    // while loop
    while(a>0){
        a -= 2;
        c++;
    }
    // final value of a = 0, c = 4
    _print_int(a);
    _print_int(c);
    return 0;
}