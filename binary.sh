#!/bin/bash
toBinary(){
    local n bit
    for (( n=$1 ; n>0 ; n >>= 1 )); do  bit="$(( n&1 ))$bit"; done
    printf "%s\n" "$bit"
}
echo "------------------------------------------"
read -p "Enter Number:" ch
echo "------------------------------------------"
toBinary $ch
echo "------------------------------------------"
