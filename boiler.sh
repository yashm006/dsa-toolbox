#!/bin/bash

# Check whether a file has been passed in the argument 
if [[ -z "$1" ]]
then
    printf "\033[31mError: No file given as argument\n"
    exit 1
fi 

file="$1"



boilerplate='#include <iostream>
#include <vector>
#include <bits/stdc++.h>

using namespace std;


// void solve() {
//     
// }

int main() {

    return 0;
}
'

echo "$boilerplate" > "$file"

printf "\n\033[32mSuccessfully added the Boilerplate code in $file\033[0m\n\n"