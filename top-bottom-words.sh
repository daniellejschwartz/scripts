#! /usr/bin/env bash
FILE="$1"
NUM_WORDS="$2"


echo "The top" $NUM_WORDS "words of" $FILE "are:"
cat $FILE | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' | sort | uniq -c | sort -nr | head -n $NUM_WORDS 

echo "The bottom" $NUM_WORDS "words of" $FILE "are:"
cat $FILE | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' | sort | uniq -c | sort -nr | tail -n $NUM_WORDS
