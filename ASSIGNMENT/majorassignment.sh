#!/bin/bash

#Major Assignment Submission for hugh0269
#THIS IS NOT THE FINAL SUBMISSION; PLEASE FOLLOW THE SUBMISSION TIME (AND ATTACHED GIT REVISION NUMBER) FOR THE FINAL SUBMISSION
#for some reason the player can never lose, only win or draw. Investigating
#the output formatting is poor, investigating

#initial variables
gamewins=0
compgamewins=0
roundnum=0
incr=0

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
printf "\033c"
echo -n "---------------------------------"
echo -n "\n WELCOME TO ROCK PAPER SCISSORS"
echo -n "\n---------------------------------\n"
#read -p "Type\'h\'now for help on how to play, otherwise press enter to start a match!" input1
#sleep 0.1
#if [$input1=="h"];
#then
#	echo "google it"
#else
	echo -n "lets go!\n"
#fi

echo -n ""
read -p "how many rounds? (less than 100 please)" roundnum
echo -n ""

if [ $roundnum -lt 101 ]
then
	echo -n "\n$roundnum rounds selected!"

	while  [ $incr -lt $roundnum ]
	do
		compwins=false
		wins=false
		echo -n ""
		echo -n "\n\nSCORE: YOU-$gamewins wins CPU-$compgamewins wins\n"
		echo -n ""
		read -p 'Enter 1(rock), 2(paper) or 3(scissors)' choice
		compchoice=$(shuf -i 1-3 -n 1)
	if [ $choice -eq 1 ]
		then
		echo -n "You picked rock"
		incr=`expr $incr + 1`

	elif [ $choice -eq 2 ]
		then
		echo -n "You picked paper"
		incr=`expr $incr + 1`

	elif [ $choice -eq 3 ]
		then
		echo -n "You picked scissors"
		incr=`expr $incr + 1`

		else
		echo -n "Invalid input - try again"
		continue
		fi
	echo "$choice and $compchoice"
	if [ $choice -eq $compchoice ]
		then
		echo -n "\nDRAW! no points"
		continue
	elif [ $choice -eq 1 ] && [ $compchoice -eq 2 ]
		then
		compwins=true
	elif [ $choice -eq 1 ] && [ $compchoice -eq 3 ]
		then
		wins=true
	elif [ $choice -eq 2 ] && [ $compchoice -eq 1 ]
		then
		wins=true
	elif [ $choice -eq 3 ] && [ $compchoice -eq 1 ]
		then
		compwins=true
	elif [ $choice -eq 2 ] && [ $compchoice -eq 3 ]
		then
		compwins=true
	elif [[ $choice -eq 3 ] && [ $compchoice -eq 2 ]]
		then
		wins=true
		else
		wins=false
		compwins=false
		fi
	if [ $wins=true ] && [ $compwins=true ]
		then
		echo -n "\nYou win!"
		gamewins=`expr $gamewins + 1`
	elif [ $compwins=true ] && [ $wins=false ]
		then
		echo -n "\nYou lose"
		compgamewins=`expr $compgamewins + 1`
		else
		echo -n "\nsignificant calculation error, no score change!"
		fi
		done
	else
	echo -n "Too many rounds, I won't let you play this much Rock Paper Scissors at once!!"
	fi
echo -n "\n\nFINAL SCORE: \nPLAYER:$gameswins\nCPU:$compgamewins"
echo -n "\nExiting.."
#end of program
exit
