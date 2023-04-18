#!/bin/bash

# Add todo task [done]
# Remove todo task []
# Mark todo as completed []
# List all todo tasks []
# List completed todo tasks []

# Global variables
TODO_FILE="$(pwd)/todo.txt"

# Create the file if it doesn't exist
if [ ! -e "$TODO_FILE" ]; then
    # Welcome message
    figlet "Todoish!"
    fortune | cowsay -f tux "A simple task manager living inside your command line"
    touch $TODO_FILE
fi

# Action to perform from user input i.e. source add "name of the task"
case "$1" in
"add")
    # add task to text file
    echo "$2" >>$TODO_FILE
    echo "Task added"
    ;;
"tasks")
    cat $TODO_FILE
    ;;
"remove")
    # remove task from text file
    echo "remove task"
    ;;
"show-completed")
    # show completed tasks
    echo "show completed tasks"
    ;;
esac

help() {
    less help.txt
}

# Get option argument from input i.e. source -h
while getopts "h" option; do
    case $option in
    h) help ;;
    ?)
        echo "Usage: %s: [-a] [-b value] args\n" $0
        exit 2
        ;;
    esac
done
