#Rename all files in current directory with random names
#Use Vim Renamer plugin (:Renamer) to remove spaces in filenames
#!/usr/bin/env bash
echo "Use Vim Renamer plugin (:Renamer) to fix filenames";echo;
read -p "Rename all files in current directory with random names? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
chars=abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ
for file in ./* ; do
randomString=""
rnd=$(($RANDOM % 10 + 10))
#echo $rnd
for ((i=1;i<rnd;i++)) ; do
    randomString+="${chars:RANDOM%${#chars}:1}"
done
echo $randomString
#echo
echo "mv "$file" "$randomString
mv "$file" $randomString
done
ls -l
pwd
fi
