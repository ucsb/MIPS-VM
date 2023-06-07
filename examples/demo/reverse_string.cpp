void _input_char(char& x){
}

void _input_int(int& x){
}

void _print_int(int& x){
}

void _get_string(){
}

void _input_string(char *char_array, int size){
    for(int i=0; i<size; i++){
        _input_char(char_array[i]);
    }
}

void _print_string(char *str_data){
}

int strlen(char* str_data){
    int ans = 0;
    while(str_data[ans] != '\0'){
        ans++;
    }
    return ans;
}

void stringReverse(char *Str, int i, int len)
{
	char temp;	
  	if (i >= len)
  	{
		return;
  	}
	temp = *(Str + i);
	*(Str + i) = *(Str + len);
	*(Str + len) = temp;
  	stringReverse(Str, ++i, --len);
}

int main()
{
    _print_string("Enter a string to reverse:\n");
    _get_string();
    int txt_size;
    _input_int(txt_size);
    char txt[txt_size];
    _input_string(txt, txt_size);
    stringReverse(txt, 0, strlen(txt) - 1);
    _print_string("The string after reversing is:\n");
    _print_string(txt);
    _print_string("\n");
    return 0;
}