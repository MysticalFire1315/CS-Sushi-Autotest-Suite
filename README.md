# CS-Sushi-Autotest-Suite
Autotest suite for `CS Sushi` (COMP1511 22T2 Assignment 2)


## About
Hi all! I've decided to publish this repository containing a set of autotest suites I created specifically for the `CS Sushi` assignment.


## How to use
The easiest way to use this autotest suite is probably to download the whole repo as a zip, then move the contents of the folder into your working directory*.
Once you've done that, simply navigate to your working directory in the bash terminal, give the script execute permission by running `chmod 755 run_test_suite.sh` (only need to do this step when you first download the file), and run the test suite using the command `./run_test_suite.sh`.

Please note that you should either be on the CSE servers or have the `dcc` set up on your machine before attempting to run the script!
I've set it to use `dcc` to compile the program (for leak-check purposes), so it'll crash if you attempt to run it on a machine without `dcc`.


## Contents of Repo
- `run_test_suite.sh` is the bash script to execute, which will run the autotests.
- `tests/` is a directory containing the test cases. 
  - Each test case is an "extensionless" file of its own, containing the inputs.


## Notes
*Working directory is the directory with your file. In this case, its the directory where your `cs_sushi.c` file is located.

If you have suggestions for more test cases, feel free to add them in a reply to [my Ed post](https://edstem.org/au/courses/8666/discussion/952256). I'll maintain this repo until Term 3 starts.

## Changelog
### 3 August 2022
Created repo and added initial test cases.
