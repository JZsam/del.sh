#! /usr/bin/env bash
set -euo pipefail
list=$( ls | sed 's/.jpg//g' | sed '/del.sh/d' | xargs)
echo $list
mkdir "$(pwd)_del/"
for current in $list; do
	new=$(($current%2))
	if [ $new -eq 1 ] ; then
		mv "$current.jpg" "$(pwd)_del/"
		echo "odd;next"
	else
		echo "Even; next"
	fi
done
