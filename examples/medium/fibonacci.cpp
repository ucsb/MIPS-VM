int fibonacci(int n){
    if(n<=2){
        return 1;
    }
    return fibonacci(n-1) + fibonacci(n-2);
}

int main(){
    int a = fibonacci(5);
    int b = fibonacci(10);
    int c = a - b;
    // final values -> a = 5, b = 55, c = -50
}