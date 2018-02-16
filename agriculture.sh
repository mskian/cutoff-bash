#!/usr/bin/env bash

echo "Cut Off Calculator - Agriculture"

echo -n "Enter your Biology Mark: "
read -r biology 

echo -n "Enter your Maths Mark: "
read -r maths

echo -n "Enter your Physics Mark: "
read -r physics

echo -n "Enter your Chemistry Mark: "
read -r chemistry

echo "[+] Calculating your CUT OFF MARK..."

answer=$(echo "scale=2; $biology / 4 + $maths / 4 + $physics / 4 + $chemistry / 4" | bc)
echo "Your Cut off Mark is - $answer"
