void _input_int(int& x){
}

void _print_int(int& x){
}

void _print_int_array(int *array, int size){
}

int main(){
    int size;
    _input_int(size);
    int array[size];
    for(int i=0; i<(sizeof(array)/sizeof(int)); i++){
        _input_int(array[i]);
    }
    // computing squares
    for(int i=0; i<size; i++){
        array[i] *= array[i];
    }
    // printing them out
    // for(int i=0; i<size; i++){
    //     _print_int(array[i]);
    // }
    _print_int_array(array, size);
}