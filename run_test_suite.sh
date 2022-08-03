#!/usr/bin/env bash

# Declare the file paths
MY_FILE_PATH='./cs_sushi'
SOLUTION_PATH='1511 cs_sushi'

# Declare our colour codes
red="\e[0;31m"
green="\e[0;32m"
reset="\e[0m"

# Show that command is running
echo -e $reset"Running autotests for cs_sushi.c"

# First compile the file
echo 'dcc --valgrind --leak-check cs_sushi.c -o cs_sushi'
dcc --valgrind --leak-check cs_sushi.c -o cs_sushi

# Keep track of number of tests passed and failed
let num_passed=0
let num_failed=0

# Run through autotests
for test_file in ./tests/*; do
    my_output=$($MY_FILE_PATH < $test_file)
    reference_output=$($SOLUTION_PATH < $test_file)

    if [ "$my_output" = "$reference_output" ]; then
        echo -e "Test $test_file ($MY_FILE_PATH) -$green passed$reset"
        let num_passed++
    else
        echo -e "Test $test_file ($MY_FILE_PATH) -$red failed$reset"
        # Show program output
        echo "Your output was:"
        echo -e "$red$my_output$reset"
        # Show reference output
        echo
        echo "The reference output was:"
        echo -e "$green$reference_output$reset"
        let num_failed++
    fi

done

if [ $num_failed = 0 ]; then
    echo -e "$green$num_passed tests passed $num_failed tests failed$reset"
elif [ $num_passed = 0 ]; then
    echo -e "$red$num_passed tests passed $num_failed tests failed$reset"
else
    echo -e "$green$num_passed tests passed $red$num_failed tests failed$reset"
fi