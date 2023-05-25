void _print_int(int& x){
}

void _input_int(int& x){
}

int is_div_by4(int num){
    int flag =0;
    if(num>0){
        if(num % 4 ==0){
            flag =5;
        }
        else{
            flag = 1;
        }
    }
    else{
        flag = -10;
    }
    return flag;
}

int main(){
    //checking if number is positive multiple of 4
    // loading the number
    int num1, num2, num3;
    int res1, res2, res3;

    _input_int(num1);
    _input_int(num2);
    _input_int(num3);

    res1 = is_div_by4(num1);
    res2 = is_div_by4(num2);
    res3 = is_div_by4(num3);
    
    //final value of res1=1, res=5, res3= -10
    _print_int(res1);
    _print_int(res2);
    _print_int(res3);
    return 0;
}