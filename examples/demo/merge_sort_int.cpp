void _print_int(int& x){
}

void _input_int(int& x){
}

void _input_int_array(int *int_array, int size){
    for(int i=0; i<size; i++){
        _input_int(int_array[i]);
    }
}

void _print_int_array(int *array, int size){
}

void _print_string(char *str_data){
}

// Function to merge the sub-arrays.
void merge(int *arr, int low, int mid, int high) {
    int i, j, k;
    int lengthLeft = mid - low + 1;
    int lengthRight = high - mid;

    // Creating two temp arrays to store left and right sub-arrays.
    int arrLeft[lengthLeft], arrRight[lengthRight];

    // Copying the data from the actual array to left and right temp arrays.
    for (int a = 0; a < lengthLeft; a++) {
        arrLeft[a] = arr[low + a];
    }
    for (int a = 0; a < lengthRight; a++) {
        arrRight[a] = arr[mid + 1 + a];
    }

    // Merging the temp arrays back into the actual array.
    i = 0; // Starting index of arrLeft[].
    j = 0; // Staring index of arrRight[].
    k = low; // Starting index of merged subarray.

    while (i < lengthLeft && j < lengthRight) {
        // Checking and placing the smaller number of both temp arrays into the main array.
        if (arrLeft[i] <= arrRight[j]) {
            arr[k] = arrLeft[i];
            i++;
        } else {
            arr[k] = arrRight[j];
            j++;
        }
        k++;
    }

    // After the successful execution of the above loop
    // copying the remaining elements of the left subarray (if remaining).
    while (i < lengthLeft) {
        arr[k] = arrLeft[i];
        k++;
        i++;
    }

    // Copying the remaining elements of the right sub array (if remaining).
    while (j < lengthRight) {
        arr[k] = arrRight[j];
        k++;
        j++;
    }
}

// The mergeSort() function.
void mergeSort(int * arr, int low, int high) {
    int mid;
    if (low < high) {
        // Calculating the mid.
        mid = (low + high) / 2;

        // Calling the function mergeSort() recursively and breaking down the given array into smaller sub arrays.
        mergeSort(arr, low, mid);
        mergeSort(arr, mid + 1, high);

        // Calling the merge() function to merge the sorted subarrays into the main array.
        merge(arr, low, mid, high);
    }
}

int main() {
    int n;
    _print_string("Enter the length of the array: ");
    _input_int(n);
    int arr[n];
    _print_string("Enter space separated numbers of array on the same line:\n");
    _input_int_array(arr, n);

    // Calling the mergeSort() function.
    mergeSort(arr, 0, n - 1);
    
    _print_string("The array after sorting is:\n");
    _print_int_array(arr, n);
    return 0;
}