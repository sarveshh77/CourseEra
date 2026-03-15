#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (Principal * Rate * Time) / 100

echo "====================================="
echo "      Simple Interest Calculator     "
echo "====================================="

# Get user input
echo "Enter the Principal amount:"
read principal

echo "Enter the Rate of Interest (in %):"
read rate

echo "Enter the Time Period (in years):"
read time

# Validate inputs
if [ -z "$principal" ] || [ -z "$rate" ] || [ -z "$time" ]; then
    echo "Error: All fields are required!"
    exit 1
fi

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display Results
echo "====================================="
echo "           Results                   "
echo "====================================="
echo "Principal Amount  : $principal"
echo "Rate of Interest  : $rate%"
echo "Time Period       : $time years"
echo "-------------------------------------"
echo "Simple Interest   : $simple_interest"
echo "Total Amount      : $total_amount"
echo "====================================="
