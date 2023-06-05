void _print_int(int& x){
}

void _input_int(int& x){
}

int main(){
    int n; // no of coin denominations
    _input_int(n);

    int coins_den[n];
    for(int i=0;i<n;i++){
        _input_int(coins_den[i]);
    }
    int summation;
    _input_int(summation);

    int matrix[summation+1][n];
    //initalization
    for(int i=0;i<n;i++){
        matrix[0][i]=1;
    }
    int val1, val2;

    for(int i=1;i<summation+1;i++){
        for(int j=0;j<n;j++){
            //including coin_den[j]
            if(i-coins_den[j]>=0){
                val1= matrix[i-coins_den[j]][j];
            }
            else{
                val1=0;
            }
            //excluding coin_den[j]
            if (j>0)
            {
                val2 = matrix[i][j-1];
            }
            else{
                val2 = 0;
            }
            matrix[i][j] = val1 + val2;
        }
    }
    int res = matrix[summation][n-1];
    
    _print_int(res);

    return 0;
}