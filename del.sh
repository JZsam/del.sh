#! /usr/bin/env bash
set -euo pipefail
####################
# FUNCTIONS        #
####################
Help(){
	echo
	echo "del.sh [-h|v|l|p] mod"
	echo "options:"
	echo "h		Print this help statment"
	echo "v		Prints the version"
	echo "l		Changes the standard (take the larger side like 2/3 or 3/4) to take 1/3 or 1/4"
	echo "p		Lets you pass in a specific path"
}
####################
# SETTING VARIABLES#
####################
Lower=false
Path=$(pwd)
PathChange=false
####################
# OPTIONS          #
####################
while getopts ":hvlp" option; do
	case $option in
		h) # display Help
			Help
			exit;;
		v)
			# echo beta 0.1.0
			echo alpha 0.1.1
			exit;;
		l)
			Lower=true;;
		p)
			Path=$2
			PathChange=true;;
		\?)
			echo "Error: Invalid option"
			echo "Try using the -h flag for some help"
			jexit;;
	esac
done
####################
# MAIN			   #
####################
# echo $Lower
# echo $1
# echo $2
echo $Path
# FIXME it is trying to go through the first part even when I use the flag
if [ $PathChange == true ]; then
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
else
	cd $Path
	list=$( ls | sed 's/.jpg//g' | sed '/del.sh/d' | xargs)
	echo $list
	mkdir "$(pwd)_del/"
	if [ $Lower == false ]; then
		for current in $list; do
			new=$(($current%$3))
			if [ $new != 0 ] ; then
				mv "$current.jpg" "$(pwd)_del/"
				echo "Move;next"
			else
				echo "Stay; next"
			fi
		done
	elif [ $Lower == true ];  then
		for current in $list; do
			new=$(($current%$4))
			if [ $new = 0 ] ; then
				mv "$current.jpg" "$(pwd)_del/"
				echo "Move;next"
			else
				echo "Stay; next"
			fi
		done
	fi
	cd -
fi
