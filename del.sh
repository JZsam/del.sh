#! /usr/bin/env bash
set -euo pipefail
####################
# FUNCTIONS        #
####################
Help(){
	echo
	echo "del.sh [-h|v|l] mod"
	echo "options:"
	echo "h		Print this help statment"
	echo "v		Prints the version"
	echo "l		Changes the standard (take the lager side like 2/3 or 3/4) to take 1/3 or 1/4"
}
####################
# SETTING VARIABLES#
####################
Lower=false
####################
# OPTIONS          #
####################
while getopts ":hvl" option; do
   case $option in
      h) # display Help
         Help
         exit;;
	 v)
		echo beta 0.1.0
		 exit;;
	 l)
		 Lower=true;;
		 # exit;;
	 \?)
		 echo "Error: Invalid option"
		 exit;;
   esac
done
####################
# MAIN			   #
####################
# echo $Lower
# echo $1
# echo $2
list=$( ls | sed 's/.jpg//g' | sed '/del.sh/d' | xargs)
echo $list
mkdir "$(pwd)_del/"
if [ $Lower == false ]; then
	for current in $list; do
		new=$(($current%$1))
		if [ $new != 0 ] ; then
			mv "$current.jpg" "$(pwd)_del/"
			echo "Move;next"
		else
			echo "Stay; next"
		fi
	done
elif [ $Lower == true ];  then
	for current in $list; do
		new=$(($current%$2))
		if [ $new = 0 ] ; then
			mv "$current.jpg" "$(pwd)_del/"
			echo "Move;next"
		else
			echo "Stay; next"
		fi
	done
fi
