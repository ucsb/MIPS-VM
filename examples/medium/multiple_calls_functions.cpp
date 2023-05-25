void _print_int(int& x){
}

void _input_int(int& x){
}

int increment_one(int num){
    return num+1;
}
int increment_two(int num){
    return num+2;
}

int main(){
    int i, total,n;
    _input_int(i);
    _input_int(total);
    _input_int(n);
    for (i=0;i<n;i++){
        if(i%2==0){
            total = total + increment_two(i);
        }
        else{
            total = total + increment_one(i);
        }
    }
    _print_int(total);
    //final value -> total = 60
    return 0;
}