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

            echo "Your guess is Less then the true number, try again: "

        elif [ $number -gt $the_truth ]
        then

            echo "Your guess is greater than the true number, try again: "
        else

            echo "Cheers, you are right padawan.  The force is strong with this one!"

        break;

        fi

    done

}
echo "Guess how many files you have in current directory, padawan!"
guess
