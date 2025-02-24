# Shell Script Race Condition

This repository demonstrates a race condition in a bash script that processes a list of files. The script uses background processes (`&`) to speed up processing, but without proper synchronization, there's a risk of issues if the file operations aren't atomic.

## Bug Description

The `bug.sh` script attempts to create a series of files. However, due to the asynchronous nature of the `touch` command combined with the background process (`&`), there is a possibility of file creation happening out of order or not at all if the script is interrupted.

## Solution

The `bugSolution.sh` provides a solution using `wait` to ensure all background jobs are finished before the script continues.  This approach guarantees all files will be created in the intended order, avoiding the race condition.