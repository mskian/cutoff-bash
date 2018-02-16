#!/usr/bin/env bash

echo "Cut Off Calculator - Pure Science(Medical)"

echo -n "Enter your Botany Mark: "
read -r botany

echo -n "Enter your Zoology Mark: "
read -r zoology

echo -n "Enter your Physics Mark: "
read -r physics

echo -n "Enter your Chemistry Mark: "
read -r chemistry

echo "[+] Calculating your CUT OFF MARK..."

answer=$(echo "scale=2; $botany / 4 + $zoology / 4 + $physics / 4 + $chemistry / 4" | bc)
echo "Your Cut off Mark is - $answer"
