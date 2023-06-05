void _print_int(int& x){
}

void _input_int(int& x){
}

int maximum(int a , int b){
    if (a>b){
        return a;
    }
    return b;
}

int knapsack(int* weights, int* values, int W, int n ){
    if(n<0 || W==0){
        return 0;
    }
    if(weights[n] > W){
        //do not include the item.
        return knapsack(weights, values, W, n-1);
    }
    //either include the nth item or not include
    int v1 = values[n]+knapsack(weights, values, W-weights[n], n-1);
    int v2 = knapsack(weights, values, W, n-1);
    int res = maximum(v1,v2);
    return res;
}

int main(){
    int n; //number of items
    _input_int(n);

    int weights[n];
    int values[n];

    for(int i=0;i<n;i++){
        _input_int(weights[i]);
    }
    for(int i=0;i<n;i++){
        _input_int(values[i]);
    }

    int W; // knapsack capacity
    _input_int(W);
    int res = knapsack(weights, values, W, n-1);
    _print_int(res);
    return 0;
}