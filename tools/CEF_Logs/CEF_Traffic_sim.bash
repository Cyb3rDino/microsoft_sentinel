#!/bin/bash
#Welcome Message
echo CEF Traffic Simulator ist starting.
#Get amount of entries to send
read -p "How many entries do you want to send?" b
#Define Facility
read -p "Which Facility ?" fa
f="local$fa.warn"
#Define var
i=1
t=$(date "+%T")
#while Loop for sendind CEF Entries
while [ $i -le $b ]
do
  echo Message Number: $i was send.
  logger -p $f -P 514 -n 127.0.0.1 --rfc3164 -t CEF "0|Mock-test2|TRAFFIC-Simulator|common=event-format-test number$i SystemTime $t|end|TRAF>  ((i++))
  sleep 10
done