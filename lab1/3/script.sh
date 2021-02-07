#!/bin/bash
FILE=./output/download.out
TIMEFILE=./output/timefile.txt
URL=https://www.storyshaala.com
RESULT=./output/result.txt

startTime=$(date)
echo "----------------start------------" >> $FILE
echo "" >> $FILE

time(curl --connect-timeout 100 $URL) >> $FILE 2>> $TIMEFILE
echo "" >> $FILE
endTime=$(date)
echo "startTime: $startTime" >> $FILE >> $TIMEFILE
echo "endTime: $endTime" >> $FILE >> $TIMEFILE
echo "---------------end-----------" >> $FILE
echo "" >> $FILE >> $TIMEFILE

grep 'real\|startTime' ./output/timefile.txt > $RESULT