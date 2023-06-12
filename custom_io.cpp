/*
Functions used to input and print integers, array of int,
char, string (array of char) instead of cin and cout.
*/

void _input_char(char& x){
}

void _print_char(char& x){
}

void _get_string(){
}

void _input_string(char *char_array, int size){
    for(int i=0; i<size; i++){
        _input_char(char_array[i]);
    }
}

void _print_string(char *str_data){
}

void _input_int(int& x){
}

void _print_int(int& x){
}

void _input_int_array(int *int_array, int size){
    for(int i=0; i<size; i++){
        _input_int(int_array[i]);
    }
}

void _print_int_array(int *array, int size){
}

