void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    int n1,n2, i,j;
    int count;

    _input_int(n1);
    _input_int(n2);
    _input_int(count);
    for(i=0;i<n1;i++){
        for (j=0;j<n2;j++){
            count= count+1;
        }
    }
    _print_int(count);
    //final values -> count = 35
    return 0;
}