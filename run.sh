#!/bin/bash

# Colors
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[0m"

file="$1"

if [[ -z "$file" ]]; then
    printf "${RED}Error: No C++ file specified.${RESET}\n"
    printf "${YELLOW}Usage: ./run.sh <file.cpp>${RESET}\n"
    exit 1

fi

# Capture compiler output (stdout + stderr); keep g++'s own coloring
if output=$(g++ -g -Wall -Wextra -std=c++17 -fdiagnostics-color=always "$file" 2>&1); then

    # Show warnings if there were any
    if [[ -n "$output" ]]; then
        printf "${YELLOW}Compiled with warnings:${RESET}\n%s\n\n" "$output"
    fi

    if [[ -f input.txt ]]; then
        printf "${YELLOW}Running with input.txt...${RESET}\n"
        ./a.out < input.txt
    else
        ./a.out
    fi

else
    printf "${RED}Compilation failed:${RESET}\n\n"
    printf "%s\n" "$output"
    exit 1
fi

echo