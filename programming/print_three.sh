#!/bin/bash

# Ask for the user's name
echo -n "What is your name? "
read username

# Arrays to hold even and odd numbers
even_numbers=()
odd_numbers=()

# Loop through all command-line arguments
for num in "$@"; do
    # Check if it's a valid integer (optional but good practice)
    if [[ $num =~ ^-?[0-9]+$ ]]; then
        if (( num % 2 == 0 )); then
            even_numbers+=("$num")
        else
            odd_numbers+=("$num")
        fi
    else
        echo "Warning: '$num' is not an integer, skipping." >&2
    fi
done

# Function to print a list of numbers
print_list() {
    local label="$1"
    shift
    local numbers=("$@")
    echo -n "$label: "
    if [ ${#numbers[@]} -eq 0 ]; then
        echo "none"
    else
        echo "${numbers[*]}"
    fi
}

# Print results
echo -e "\nHello, $username!"
print_list "Even numbers" "${even_numbers[@]}"
print_list "Odd numbers"  "${odd_numbers[@]}"