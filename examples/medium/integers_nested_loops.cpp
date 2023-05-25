void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    int i,j;
    int count;

    _input_int(i);
    _input_int(j);
    _input_int(count);
    for(i=0;i<5;i++){
        for (j=0;j<7;j++){
            count= count+1;
        }
    }
    _print_int(count);
    //final values -> count = 35
    return 0;
}