#!/bin/bash

#for i in {1..100}
for i in {101..999}
do
    template=$(cat test_input.txt)
    filename="$(printf "data_%03d" $i)"
    echo $filename

    echo ${template/test/${filename}} | tr ' ' '\n' | python PhraseGenerator.py > /dev/null
done
