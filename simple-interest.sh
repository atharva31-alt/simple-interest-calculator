#!/bin/bash
# This script calculates simple interest.
# Fields: principal, rate of interest, time period

echo "----------------------------------------"
echo "       Simple Interest Calculator       "
echo "----------------------------------------"

# Prompt user for input fields
echo -n "Enter the principal amount: "
read principal

echo -n "Enter the annual rate of interest (as a percentage): "
read rate

echo -n "Enter the time period (in years): "
read time

# Calculate simple interest using basic bash arithmetic execution
# Formula: Simple Interest = (Principal * Rate * Time) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l 2>/dev/null || echo $(( (principal * rate * time) / 100 )))

echo "----------------------------------------"
echo "Calculated Simple Interest: $interest"
echo "----------------------------------------"
