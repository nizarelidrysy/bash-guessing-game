#!/usr/bin/env bash

calculate_answer() {
    local answer
    answer=$(ls -A1 | wc -l)
    echo $answer
}

run_game() {
    local actual_files
    actual_files=$(calculate_answer)

    local guess=-1

    echo "---"
    echo "Welcome to the File Guessing Game!"
    echo "Can you guess how many files are in this directory?"
    echo "---"

    while [[ $guess -ne $actual_files ]]; do
        echo "Enter your guess (a whole number):"
        read guess

        if [[ $guess -lt $actual_files ]]; then
            echo "Your guess was too low. Try again!"
        elif [[ $guess -gt $actual_files ]]; then
            echo "Your guess was too high. Try again!"
        else
            echo ""
            echo "CONGRATULATIONS! You guessed correctly!"
            echo "The number of files is indeed $actual_files."
            echo ""
        fi
    done
}

run_game

