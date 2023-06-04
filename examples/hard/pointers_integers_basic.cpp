void _input_int(int& x){
    x = 0;
}

void _print_int(int& x){
}

int main(){
    int myNumbers[4] = {25, 50, 75, 100};
    int *ptr = myNumbers;
    int i;
    for (i = 0; i < 4; i++) {
        _print_int(*(ptr + i));
    }
}