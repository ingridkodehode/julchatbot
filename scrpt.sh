#!/bin/bash

echo "Velkommen til Quantfol.io sin JulBot!"

echo "Har du julestemning? (y/n)"

read answ

case $answ in

        y)
                mood="Så flott! God jul <3"
                ;;

        n)
                mood="Håper dette kan hjelpe!"
                ;;
esac

echo "$mood"

green="\033[0;32m"
red="\033[0;31m"
nc="\033[0m"

nr1=3
nr2=5

for x in {1..100};
do
  if (( $x % $nr1 == 0 ))
   then
        echo -e "${green}HO${nc}"

        if (( $x % $nr2 == 0 ))
          then
           echo -e "${green}HO${red}HO${nc}"

        fi
  elif (( $x % $nr2 == 0 ))
    then
        echo -e "${red}HO${nc}"

   else
        echo "$x"

  fi
done
