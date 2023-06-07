void _print_string(char *str_data){
}

void _input_int(int& x){
}

void _input_char(char& x){
}

void _get_string(){
}

void _input_string(char *char_array, int size){
    for(int i=0; i<size; i++){
        _input_char(char_array[i]);
    }
}

int main(){
    _print_string("Enter the string to be stored:\n");
    _get_string();
    int message_size;
    _input_int(message_size);
    char message[message_size];
    _input_string(message, message_size);
    _print_string("The entered string is:\n");
    _print_string(message);
    _print_string("\n");
    return 0;
}