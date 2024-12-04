# Unhandled Errors in MATLAB Function
This repository demonstrates a common issue in MATLAB: unhandled errors leading to cryptic error messages. The `myFunction` performs a calculation, but doesn't gracefully handle cases where the input is invalid or the calculation overflows.  The solution shows how to improve error handling for better user experience and debugging.

## Bug
The `bug.m` file contains the original code with insufficient error handling.  Running the function with negative input or large values will result in a MATLAB error.

## Solution
The `bugSolution.m` file presents an improved version, using `try-catch` blocks to handle potential errors and provide more informative error messages to the user.