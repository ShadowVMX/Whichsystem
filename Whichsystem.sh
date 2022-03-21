#!/bin/bash
#
#Made By H4cknet <--> ShadowVMX
#What's that machine in front of you.

if [[ -z $1 ]] ; then
echo " "
echo "Whichsystem <IP>"
echo " "
exit
fi

A=`timeout 0.5 ping -c 1 $1 | grep "64" | cut -d " " -f1`

if [[ $A == "" ]] ; then
	echo " "
	echo "$(tput setaf 1)[-] FIREWALL UP OR HOST DOWN."
	echo " "
	exit
fi

if [[ $A -le 64 ]] ; then
	echo " "
	echo "$(tput setaf 4)[!] Linux."
	echo " "
elif [[ $A -gt 64 ]] ; then
	echo " "
	echo "$(tput setag 4)[!] Windows."
	echo " "
fi
