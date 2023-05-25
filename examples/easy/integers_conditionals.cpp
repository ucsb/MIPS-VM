int main(){
    // just loading the numbers
    int a = 8, b = 20, c = 0;
    // if condition
    if(a <= b){
        c = 10;
    }
    else{
        c = 5;
    }
    // ternary operator
    c += a > b ? -5 : 5;
    // final value -> a = 8, b = 20, c = 15
    return 0;
}