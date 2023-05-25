void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    int option;
    int summation;
    _input_int(option);
    _input_int(summation);
    switch(option){
        case 1: summation = summation + 1;
        break;
        case 2: summation = summation + 2;
        case 3: summation = summation + 3;
        break;
        case 4: summation = summation + 4;
    }
    //final value of summation -> 5
    _print_int(summation);
    return 0;
}