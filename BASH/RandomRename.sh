#Give a random name to a file or directory
#Use Vim Renamer plugin (:Renamer) to fix possible name problems
#!/usr/bin/env bash
chars=abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ
randomString=""
rnd=$(($RANDOM % 10 + 10))
#echo $rnd
for ((i=1;i<rnd;i++)) ; do
    randomString+="${chars:RANDOM%${#chars}:1}"
done
#echo $randomString
#echo
echo "mv "$1" "$randomString
mv -vi "$1" $randomString
ls -l $randomString*
pwd
