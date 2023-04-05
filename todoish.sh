#!/bin/bash

# Add todo task
# Remove todo task
# Mark todo as completed
# List all todo tasks
# List completed todo tasks

#Define global variables

# Define the file where we will store the todo tasks
# TODO_FILE="$(pwd)/todo.txt"

if [ ! -e "$TODO_FILE" ]; then
    # Welcome message
    fortune | cowsay -f tux "Welcome $(whoami) to todoish, let's get stuff done!"
    touch $TODO_FILE
fi


case "$1" in
    "add")
        echo "Task added"
    ;;
    2|3)
        echo "item = 2 or item = 3"
    ;;
    *)
        echo "default (none of above), result $action"
    ;;
esac
    
