#!/usr/bin/env bash
#Generates a random Name
chars=abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ
#randomString=""
rnd=$(($RANDOM % 10 + 10))
#echo $rnd
for ((i=1;i<rnd;i++)) ; do
    randomString+="${chars:RANDOM%${#chars}:1}"
done
echo $randomString
echo

