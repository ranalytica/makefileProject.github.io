#!/usr/bin/env bash

function guess(){
    the_truth=$(ls -l |grep "^-"|wc -l)
# list all files in current directory, searches for all files that starts with hyphen
# and generates a total count.
    while true;
    do
        echo "Enter guess here: "
        read  number
        if [ $number -lt $the_truth ]
        then
            echo "your guess is Less then the true number"
        elif [ $number -gt $the_truth ]
        then
            echo "your guess is Greater then the true number"
        else
            echo "Cheers, you are right!"
        break;
        fi
    done
}
echo "Guess how many files you have in current directory!"
guess
