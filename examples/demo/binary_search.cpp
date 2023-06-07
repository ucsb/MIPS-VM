void _input_int(int& x){
}

void _print_int(int& x){
}

void _print_string(char *str_data){
}

void _input_int_array(int *int_array, int size){
    for(int i=0; i<size; i++){
        _input_int(int_array[i]);
    }
}

int binary_search(int left, int right, int target, int* arr){
    if(left > right){
        return -1;
        //element not found
    }
    int mid = left + (right - left) / 2;
    if(arr[mid] == target){
        return mid;
    }
    else if(arr[mid]< target){
        return  binary_search(mid+1, right, target, arr);
    }
    else{
        return binary_search(left, mid-1, target, arr);
    }
}

int main(){
    int n;
    _print_string("Enter the length of the array: ");
    _input_int(n);
    int arr[n];
    _print_string("Enter space separated numbers on the same line:\n");
    _input_int_array(arr, n);
    //input target
    int target;
    _print_string("Enter the target to be searched: ");
     _input_int(target);

    int res =  binary_search(0,n-1,target,arr);
    _print_string("The index where the target is found is: ");
    _print_int(res);
    return 0;
}