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

// Fills lps[] for given pattern pat[0..M-1]
void computeLPSArray(char* pat, int M, int* lps)
{
    // length of the previous longest prefix suffix
    int len = 0;
 
    lps[0] = 0; // lps[0] is always 0
 
    // the loop calculates lps[i] for i = 1 to M-1
    int i = 1;
    while (i < M) {
        if (pat[i] == pat[len]) {
            len++;
            lps[i] = len;
            i++;
        }
        else // (pat[i] != pat[len])
        {
            // This is tricky. Consider the example.
            // AAACAAAA and i = 7. The idea is similar
            // to search step.
            if (len != 0) {
                len = lps[len - 1];
 
                // Also, note that we do not increment
                // i here
            }
            else // if (len == 0)
            {
                lps[i] = 0;
                i++;
            }
        }
    }
}

// Prints occurrences of txt[] in pat[]
void KMPSearch(char* pat, char* txt)
{
    int M = strlen(pat);
    int N = strlen(txt);
 
    // create lps[] that will hold the longest prefix suffix
    // values for pattern
    int lps[M];
 
    // Preprocess the pattern (calculate lps[] array)
    computeLPSArray(pat, M, lps);
 
    int i = 0; // index for txt[]
    int j = 0; // index for pat[]
    while ((N - i) >= (M - j)) {
        if (pat[j] == txt[i]) {
            j++;
            i++;
        }
 
        if (j == M) {
            _print_string("Found pattern at index: ");
            int pos = i-j;
            _print_int(pos);
            j = lps[j - 1];
        }
 
        // mismatch after j matches
        else if (i < N && pat[j] != txt[i]) {
            // Do not match lps[0..lps[j-1]] characters,
            // they will match anyway
            if (j != 0)
                j = lps[j - 1];
            else
                i = i + 1;
        }
    }
}

int main()
{
    _print_string("Enter the text to be searched at:\n");
    _get_string();
    int txt_size;
    _input_int(txt_size);
    char txt[txt_size]; // AABAACAADAABAABA
    _input_string(txt, txt_size);
    _print_string("Enter the pattern to be searched for:\n");
    _get_string();
    int pat_size;
    _input_int(pat_size);
    char pat[pat_size]; // AABA
    _input_string(pat, pat_size);
    KMPSearch(pat, txt);
    return 0;
}