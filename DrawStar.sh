#!/bin/bash
# Read arguments
size=$1
type=$2
# Check arguments
if [ -z "$size" ] || [ -z "$type" ]; then
    echo "Usage: ./drawStar.sh <size> <type>"
    echo "Types: t1 to t7"
    exit 1
fi
case $type in
    t1)
        # Right-aligned triangle
        for ((i=1; i<=size; i++))
        do
            for ((s=size; s>i; s--))
            do
                echo -n " "
            done
            for ((j=1; j<=i; j++))
do
                echo -n "*"
            done
            echo
        done
        ;;
    t2)
        # Left-aligned triangle
        for ((i=1; i<=size; i++))
        do
            for ((j=1; j<=i; j++))
            do
                echo -n "*"
            done
            echo
        done
        ;;
    t3)
        # Pyramid
        for ((i=1; i<=size; i++))
        do
            for ((s=size; s>i; s--))
            do

echo -n " "
            done
            for ((j=1; j<=2*i-1; j++))
            do
                echo -n "*"
            done
            echo
        done
        ;;
    t4)
        # Inverted left-aligned triangle
        for ((i=size; i>=1; i--))
        do
            for ((j=1; j<=i; j++))
            do
                echo -n "*"
            done
            echo
        done
        ;;
    t5)
        # Inverted right-aligned triangle
        for ((i=size; i>=1; i--))

do
            for ((s=size; s>i; s--))
            do
                echo -n " "
            done
            for ((j=1; j<=i; j++))
            do
                echo -n "*"
            done
            echo
        done
        ;;
    t6)
        # Inverted pyramid
        for ((i=size; i>=1; i--))
        do
            for ((s=size; s>i; s--))
            do
                echo -n " "
            done
            for ((j=1; j<=2*i-1; j++))
            do
                echo -n "*"

done
            echo
        done
        ;;
    t7)
        # Diamond
        # Upper pyramid
        for ((i=1; i<=size; i++))
        do
            for ((s=size; s>i; s--))
            do
                echo -n " "
            done
            for ((j=1; j<=2*i-1; j++))
            do
                echo -n "*"
            done
            echo
        done
        # Lower inverted pyramid
        for ((i=size-1; i>=1; i--))
        do
            for ((s=size; s>i; s--))

do
                echo -n " "
            done
            for ((j=1; j<=2*i-1; j++))
            do
                echo -n "*"
            done
            echo
        done
        ;;
    *)
        echo "Invalid type: $type"
        echo "Available types: t1 to t7"
        exit 1
        ;;
esac
