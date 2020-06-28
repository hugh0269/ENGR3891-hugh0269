#!/bin/bash

#Major Assignment Submission for hugh0269
#THIS IS NOT THE FINAL SUBMISSION; PLEASE FOLLOW THE SUBMISSION TIME (AND ATTACHED GIT REVISION NUMBER) FOR THE FINAL SUBMISSION

#Startup /animation/
printf "\033c"
echo "LOADING *___ "
sleep 1
printf "\033c"
echo "LOADING -*__ "
sleep 0.5
printf "\033c"
echo "LOADING --*_ "
sleep 0.8
printf "\033c"
echo "LOADING ---* "
sleep 0.8
printf "\033c"
echo "LOADING ---- "
sleep 0.3
printf "\033c"
echo "LOADING DONE! "
sleep 1.5
#read -p "Press enter to continue"
printf "\033c"


#Initial game loop
echo " "
echo "content"
a=1
while  [ $a -lt 10 ]
do
	echo $a
	a=`expr $a + 1`
done

#end
echo "That's all folks"
exit
