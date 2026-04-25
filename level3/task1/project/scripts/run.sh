#!/bin/bash

LOG_FILE="../logs/logs.log"

echo -e "[$(date +"%F %T")] START \n Current user: ${USER}" >> $LOG_FILE

if [ "$1" == "delete!" ]; then
> $LOG_FILE
fi

if [ "$1" == "lox" ]; then
echo "Congrat! You guessed right"
elif [ "$1" == "Bog" ]; then
echo "NO!! MAX is !BOG"
elif [ $(cat $LOG_FILE | grep $USER | wc -l) -le 2 ]; then
echo "HINT: Its realy simple"
elif [ $(cat $LOG_FILE | grep $USER | wc -l) -le 4 ]; then
echo "HINT: Max is l__"
elif [ $(cat $LOG_FILE | grep $USER | wc -l) -le 6 ]; then
echo "HINT: MAX IS l_x"
elif [ $(cat $LOG_FILE | grep $USER | wc -l) -le 10 ]; then
echo "HINT: CMON MAN, max is lox"
else
echo "HINT: Who is max?"
fi

echo "[$(date +"%F %T")] END" >> $LOG_FILE
exit 0
