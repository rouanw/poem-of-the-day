#!/bin/sh
set -e

snippet=''

while getopts 'sr' flag; do
  case "${flag}" in
    s) snippet='true' ;;
    r) random='true' ;;
    *) error "Unexpected option ${flag}" ;;
  esac
done

poem="$(rsstail -u http://feeds.poetryfoundation.org/PoetryFoundation/PoemOfTheDayText -1 -d -n 1 -N | html2text -utf8)"

LOWER=2

if [ $random ]
then
  FLOOR=2
  RANGE=`echo "${poem}" | wc -l`
  while [ "$LOWER" -le $FLOOR ]
  do
    LOWER=$RANDOM
    let "LOWER %= $RANGE"
  done
fi

if [ $snippet ]
then
	echo "${poem}" | sed -n "${LOWER},$(($LOWER + 3))p"
else
	echo "${poem}" | sed '/^ Poem of the Day/ s/$/ &\'$'\n/'
fi
