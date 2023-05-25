int increment_one(int num){
    return num+1;
}
int increment_two(int num){
    return num+2;
}

int main(){
    int i, total=0;;
    for (i=0;i<10;i++){
        if(i%2==0){
            total = total + increment_two(i);
        }
        else{
            total = total + increment_one(i);
        }
    }
    //final value -> total = 60
    return 0;
}