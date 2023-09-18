#!/bin/bash

# Welcome Message
echo "CEF Traffic Simulator is starting."

# Define if CEF or Syslog
read -p "Do you want to send CEF or Syslog? (1=CEF, 2=Syslog): " d

# Get the number of entries to send
read -p "How many entries do you want to send? " b

# Define variables
i=1
t=$(date "+%T")


# While Loop for sending CEF Entries
if [ "$d" == "1" ]; then
   # Define Facility for CEF
   read -p "Which Facility? " fa
   f="local$fa.warn"

   while [ $i -le $b ]; do
      echo "Message Number: $i was sent."
      logger -p $f -P 514 -n 127.0.0.1 --rfc3164 -t CEF "0|Mock-test$fa|TRAFFIC-Simulator|common=event-format-test numb>"
      ((i++))
      sleep 10
   done
else
   # Syslog Simulation
   while [ $i -le $b ]; do
      echo "Message Number: $i was sent."
      logger -p local7.warn -P 514 -n 127.0.0.1 "helloW0rld Number$i"
      ((i++))
      sleep 10
   done
fi

#while Loop for sendind CEF Entries
while [ $i -le $b ]
do
  echo Message Number: $i was send.
  logger -p $f -P 514 -n 127.0.0.1 --rfc3164 -t CEF "0|Mock-test$fa|TRAFFIC-Simulator|common=event-format-test number$i SystemTime $t|end|"
  ((i++))
  sleep 10
done

