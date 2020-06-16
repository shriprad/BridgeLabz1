#!/bin/bash -x


echo "Welcome to gambling simulator"


INITIAL_STAKE=100
NUM_OFDAYS=30
WIN=1
LOSS=0
BET=1
IS_VALID=true
LAST_LOSSAMOUNT=0


stakePercentAmount=$(( 50*$INITIAL_STAKE/100 ))
maxWin=$(( $stakePercentAmount+$INITIAL_STAKE ))
maxLoss=$(( $INITIAL_STAKE-$stakePercentAmount ))
totalWinOrLoss=0
daysWin=0
daysLoss=0

declare -A dayChart
declare -A monthChart

function dailyBetting()
{
   dayStake=$INITIAL_STAKE
   while [ $dayStake -lt $maxWin ] && [ $dayStake -gt $maxLoss ]
   do
     rem=$(( RANDOM % 2 ))
     if [ $rem -eq 1 ]
     then
        dayStake=$(( $dayStake+$BET ))
     else
        dayStake=$(( $dayStake-$BET ))
     fi
   done
}

function monthBetting(){

   for (( day=1; day<=$NUM_OFDAYS; day++ ))
   do
   dailyBetting
      if [ $dayStake -eq $maxLoss ]
      then
         totalWinOrLoss=$(( $totalWinOrLoss - $stakePercentAmount ))
         dayChart["Day $day"]=-$stakePercentAmount
         monthChart["Day $day"]=$totalWinOrLoss
         ((daysLoss++))
      else
         totalWinOrLoss=$(( $totalWinOrLoss + $stakePercentAmount ))
         dayChart["Day $day"]=$stakePercentAmount
         monthChart["Day $day"]=$totalWinOrLoss
         ((daysWin++))
      fi
   done
 
   echo "Total Won/loss : $totalWinOrLoss"
   echo "No. of days Win $daysWin by $(($daysWin*$stakePercentAmount))" 
   echo "No. of days Loss $daysLoss by  $(($daysLoss*$stakePercentAmount))"
   echo "${!monthChart[@]} : ${monthChart[@]}"

   luckyDay=$( printf "%s\n" ${monthChart[@]} | sort -nr | head -1 )
   unluckyDay=$( printf "%s\n" ${monthChart[@]} | sort -nr | tail -1 )

   for data in "${!monthChart[@]}"
   do
      if [[ ${monthChart[$data]} -eq $luckyDay ]]
      then
         echo "LUCKIEST DAY- $data $luckyDay"
      elif [[ ${monthChart[$data]} -eq $unluckyDay ]]
      then
         echo "UNLUCKIEST DAY- $data $unluckyDay"
      fi
   done
}

#main
while [ $IS_VALID ]
do
   monthBetting
   if [ $totalWinOrLoss -lt $LAST_LOSSAMOUNT ]
   then
      echo "you lost, can't paly"
      break
   else
      echo "you won $totalWinOrLoss, continue playing"
   fi
done
