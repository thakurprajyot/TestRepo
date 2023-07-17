#!/bin/bash

# Recursive function to calculate factorial
factorial() {
  if (( $1 <= 1 )); then
    echo 1
  else
    local prev=$(( $1 - 1 ))
    local result=$(factorial $prev)
    echo $(( $1 * $result ))
  fi
}

# Prompt the user for a number
echo "Enter a number:"

# Read the user's input
read number

# Call the factorial function
result=$(factorial $number)

# Display the factorial
echo "The factorial of $number is: $result"