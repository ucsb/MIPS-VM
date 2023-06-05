void _input_int(int& x){
}

void _print_int(int& x){
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
    int n,i;

    _input_int(n);

    int arr[n];
    for(i=0;i<n;i++){
        _input_int(arr[i]);
    }

    //input target
    int target;
     _input_int(target);

    int res =  binary_search(0,n-1,target,arr);

    _print_int(res);
    return 0;
}