void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    //addition
    unsigned int a =6, b = 10;
    unsigned int c =  a+b;

    //subtraction
    unsigned int x= 7, y = 3;
    unsigned int z = x - y;

    //bitwise operations
    unsigned int op1 = 6, op2 = 4;
    unsigned int res1 = op1 & op2;
    //res1= 4

    unsigned int res2 = op1 | op2;
    //res2= 6

    // final values -> c= 16, z = 4, res1= 4, res2= 6

    //edge cases
    /*
     unsigned int op3=6, op4=-5;
     unsigned int res3 = op3 & op4;

     unsigned int res4 = op3 | op4;
     final values ->  res3= 2 , res4= 4294967295
    */
    return 0;
}