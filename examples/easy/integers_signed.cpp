void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    //signed addition
    int a, b;
    _input_int(a);
    _input_int(b);
    int c = a+b;
    //c = -5

    int x, y;
    _input_int(x);
    _input_int(y);
    int z=x+y;
    //z= 11

    //bitwise operation
    int op1, op2;
    _input_int(op1);
    _input_int(op2);
    int res1 = op1 & op2;
    // res1 = 4

    int op3, op4;
    _input_int(op3);
    _input_int(op4);
    int res2 = op3 & op4;
    //res2 = -8

    int res3 = op1 | op2;
    //res3= -2

    int res4 = op3 | op4;
    //res4 = -2

    //shift operation
    int op5;
    _input_int(op5);
    int res5 = op5 << 2;
    // res5 = 20

    int op6;
    _input_int(op6);
    int res6 = op6 << 2;
    //res6 = -20

    int op7;
    _input_int(op7);
    int res7 = op7 >> 2;
    //res7 = -2

    //final values -> c = -5, x= 11, res1 = 4, res2 = -8, res3= -2, res4 = -2, res5 = 20, res6 = -20, res7 = -2
    _print_int(c);
    _print_int(z);
    _print_int(res1);
    _print_int(res2);
    _print_int(res3);
    _print_int(res4);
    _print_int(res5);
    _print_int(res6);
    _print_int(res7);
    return 0;

}