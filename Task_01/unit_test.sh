#!/bin/bash

# Safety check, must have executable file, an argument, and the expected output
if [ $# -ne 3 ]; then
	echo "Error: Must have 3 arguments in the following format: ExecutableFile OneArgumentToPassToExecutable ExpectedOutput"
	exit 1
fi

# safety check, makes sure the executable file is valid
if [ ! -x $1 ]; then 
	echo "Error: Must be an executable file."
	exit 1
fi

# captures the output of the given executable with the given argument passed to it
output=$($1 $2)

# checks if the output matches the expected input, if not then do the following
if [ $output != $3 ]; then
	echo "FAIL"
	echo "Expected: $3"
	echo "Got: $output"
else
#else print this to the terminal
	echo "PASS"
fi

