#!/bin/bash

#Major Assignment Submission for hugh0269
#THIS IS NOT THE FINAL SUBMISSION; PLEASE FOLLOW THE SUBMISSION TIME (AND ATTACHED GIT REVISION NUMBER) FOR THE FINAL SUBMISSION

#initial variables
wins=0
opponentwins=0
roundnum=0

#Startup /animation/
printf "\033c"
echo "LOADING *___ "
#sleep 1
printf "\033c"
echo "LOADING -*__ "
#sleep 0.5
printf "\033c"
echo "LOADING --*_ "
#sleep 0.8
printf "\033c"
echo "LOADING ---* "
#sleep 0.8
printf "\033c"
echo "LOADING ---- "
sleep 0.3
printf "\033c"
echo "LOADING DONE! "
sleep 1.5
echo -n "Press enter to continue"
read start
printf "\033c"

echo -n "WELCOME TO ROCK PAPER SCISSORS"
read -p "Type\'h\'now for help on how to play, otherwise press enter to start a match!" input1
if [$input1 == "h"]
then
echo "google it"
else echo -n "lets go!"
a=1
while  [ $a -lt 3 ]
do
echo -n "best of 3"
read -p 'Enter 1, 2 or 3' choice

if [$choice == 1]
then echo -n "You picked 1"
elif [$choice == 2]
then echo -n "You picked 2"
elif [$choice == 3]
then echo -n "You picked 3"
else echo -n "Invalid input - try again"

#Initial game loop
#echo " "
#a=1
#while  [ $a -lt 10 ]
#do
#	echo $a
#	a=`expr $a + 1`
#done

end
echo "That's all folks"
exit
