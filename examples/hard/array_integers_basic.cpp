void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    // just loading the numbers
    int n;
    int arr[20];
    
    _input_int(n);
    
    for(int i=0;i<n;i++){
        _input_int(arr[i]);
    }

    //int arr[7] = {-3, -2, -1, 0, 1, 2, 3};
    int i;
    _input_int(i);

    arr[i] += 10;
    
    int n2;
    int arr2[3];
    _input_int(n2);
    for (int j=0;j<n2;j++){
        _input_int(arr2[j]);
    }
    int k;
    _input_int(k);
    arr2[k] += 5;
    // look for 10 and 16 as values

    for(int i=0;i<n;i++){
        _print_int(arr[i]);
    }
    for(int i=0;i<n2;i++){
        _print_int(arr2[i]);
    }

    return 0;
}