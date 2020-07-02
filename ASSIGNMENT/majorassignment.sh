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
#echo -n "Press enter to continue"
#read start
printf "\033c"

echo -n "WELCOME TO ROCK PAPER SCISSORS"
#read -p "Type\'h\'now for help on how to play, otherwise press enter to start a match!" input1
#sleep 0.1
#if [$input1=="h"];
#then
#	echo "google it"
#else
	echo -n "lets go!"
#fi

a=0
#read -p "1/2/3:"

read -p "how many rounds? (less than 100 please)" roundnum
	echo -n ""

if [ $roundnum -lt 101 ]
then
	echo -n "best of $roundnum games"

	while  [ $a -lt $roundnum ]
	do
		read -p 'Enter 1(rock), 2(paper) or 3(scissors)' choice

#		echo "chose $choice!"
		if [ $choice -eq 1 ]
		then
		echo -n "You picked rock"
		a=`expr $a + 1`

		elif [ $choice -eq 2 ]
		then
		echo -n "You picked paper"
		a=`expr $a + 1`

		elif [ $choice -eq 3 ]
		then
		echo -n "You picked scissors"
		a=`expr $a + 1`

		else
		echo -n "Invalid input - try again"
		fi
		done
	else
	echo "Too many rounds, I won't let you play this much Rock Paper Scissors at once!!"
	fi
echo "That's all folks"
#end
exit
