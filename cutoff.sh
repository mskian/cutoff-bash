#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Info:
#   author:    Santhosh veer
#   file:      cutoff.sh
#   created:   14.02.2018
#   revision:  20.02.2018
#   version:   0.2
# -----------------------------------------------------------------------------
# Requirements:
#   bc
# Description:
#   Calculate Cutoff Marks using Shell script.
# Usage:
#   cutoff.sh
# -----------------------------------------------------------------------------
SCRIPTNAME=$(basename "$0")

echo -e "\\n"
echo -e "\\033[1;32m Cut off Calculator \\033[0m"
echo -e "\\033[1;32m Version 0.2 \\033[0m"
echo -e "\\033[1;32m Written By Santhosh veer  \\033[0m"
echo -e "\\033[1;32m itrendbuzz.com <me@santhoshveer.com> \\033[0m"
echo -e "\\n"

# Calculate Cut off marks for Engineering
engineering() {

echo -e "\\033[1;33m Cut Off Calculator - Engineering \\033[0m"

echo -n "Enter your Maths Mark: "
read -r maths

echo -n "Enter your Physics Mark: "
read -r physics

echo -n "Enter your Chemistry Mark: "
read -r chemistry

echo "[+] Calculating your CUT OFF MARK..."

answer=$(echo "scale=2; $maths / 2 + $physics / 4 + $chemistry / 4" | bc)
echo -e "\\033[1;35m Your Cut off Mark is - $answer \\033[0m"

} 

# Calculate Cut off marks for MBBS
mbbs() {

echo -e "\\033[1;33m Cut Off Calculator - Medical \\033[0m"

echo -n "Enter your Biology Mark: "
read -r biology

echo -n "Enter your Physics Mark: "
read -r physics

echo -n "Enter your Chemistry Mark: "
read -r chemistry

echo "[+] Calculating your CUT OFF MARK..."

answer=$(echo "scale=2; $biology / 2 + $physics / 4 + $chemistry / 4" | bc)
echo -e "\\033[1;35m Your Cut off Mark is - $answer \\033[0m"

}

# Calculate Cut off marks for Pure Science
purescience() {

echo -e "\\033[1;33m Cut Off Calculator - Pure Science(Medical) \\033[0m"

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
echo -e "\\033[1;35m Your Cut off Mark is - $answer \\033[0m"

}

# Calculate Cut off marks for Agriculture
agriculture () {

echo -e "\\033[1;33m Cut Off Calculator - Agriculture \\033[0m"

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
echo -e "\\033[1;35m Your Cut off Mark is - $answer \\033[0m"

}

# no input params triggers this error
check_for_empty_input(){
  if [ $# -eq 0 ];
  then
      echo -e "\\033[1;31m Error:  No input \\033[0m \\n"
      help
      exit 1
    fi
}

# If bc is not installed you will get this error message
check_requirements(){
  local requirements=("$@")
  for app in "${requirements[@]}"; do
    type "$app" >/dev/null 2>&1 || \
      { echo -e >&2 "\\033[1;31m $app - Arbitrary Precision Calculator language (For Cut off Calculation) is required but it's not installed. Aborting. \\033[0m \\n"; exit 1; }
  done
}

# Help Message
help(){
  echo -e  "$SCRIPTNAME [options]
        
           Example:
           cutoff.sh -e

          Options:
          -e   Calculate Cutoff Mark for Engineering
          -m   Calculate Cutoff Mark for Medical
          -p   Calculate Cutoff Mark for Purescience
          -a   Calculate Cutoff Mark for Agriculture
          -h   Display this help message
          \\n"
}

# Main Functions
main(){
  check_for_empty_input "$@"
  check_requirements bc

  while getopts 'empah' flag; do
    case "$flag" in 
      e)
        engineering
       ;;
      m)
         mbbs
      ;;
      p)
        purescience
          ;;
      a)
        agriculture
          ;;
      h) help
         exit 0
          ;;
          *)
    esac
  done
  shift $((OPTIND-1))
}

main "$@"

exit 0
