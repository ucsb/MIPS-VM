void _print_string(char *str_data){
}

void _print_char(char& x){
}

void _input_char(char& x){
}

int main(){
    char message[] = "Hello, World!!";
    char tada[6] = {'a', 'b', 'c', 'd', 'e', '\0'};
    int arr[5] = {10, 30, 50, 40, 20};
    char test_char;
    _input_char(test_char);
    test_char += 5;
    _print_char(message[4]); // => o
    _print_string(message);
    _print_string(tada);
    _print_char(test_char); // => g
    return 0;
}