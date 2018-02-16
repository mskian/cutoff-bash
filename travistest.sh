#!/usr/bin/env bash

#travis-ci Build Passing test

echo "[+] Calculating your CUT OFF MARKS..."

eng=$(echo "scale=2; 199 / 2 + 191 / 4 + 196 / 4" | bc)
echo "Your Engineering Cut off Mark is - $eng"

mbbs=$(echo "scale=2; 199 / 2 + 195 / 4 + 191 / 4" | bc)
echo "Your MBBS Cut off Mark is - $mbbs"

purescience=$(echo "scale=2; 198 / 4 + 195 / 4 + 183 / 4 + 192 / 4" | bc)
echo "Your Pure Science Cut off Mark is - $purescience"

agriculture=$(echo "scale=2; 198 / 4 + 199 / 4 + 194 / 4 + 188 / 4" | bc)
echo "Your Agriculture Cut off Mark is - $agriculture"
