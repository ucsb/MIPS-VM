int main(){
    //signed addition
    int a=1, b=-6;
    int c = a+b;
    //c = -5

    int x=5, y=6;
    int z=x+y;
    //x= 11

    //bitwise operation
    int op1 = 6, op2 = -4;
    int res1 = op1 & op2;
    // res1 = 4

    int op3 = -6, op4 = -4;
    int res2 = op3 & op4;
    //res2 = -8

    int res3 = op1 | op2;
    //res3= -2

    int res4 = op3 | op4;
    //res4 = -2

    //shift operation
    int op5 = 5;
    int res5 = op5 << 2;
    // res5 = 20

    int op6 = -5;
    int res6 = op6 << 2;
    //res6 = -20

    int op7= -6;
    int res7 = op7 >> 2;
    //res7 = -2

    //final values -> c = -5, x= 11, res1 = 4, res2 = -8, res3= -2, res4 = -2, res5 = 20, res6 = -20, res7 = -2
    return 0;

}