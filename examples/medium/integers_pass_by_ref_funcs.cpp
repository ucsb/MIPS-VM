void get_sum(int& a, int& b){
    a += b;
}

int main(){
    // just loading the numbers
    int a = 8, b = 20;
    get_sum(b, a);
    // final values -> b = 28, a = 8
    return 0;
}