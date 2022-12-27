#!/bin/bash

origin="origin"
branch="master"
new_commit_id=$(git log -n 1 --pretty=format:%H "$origin/$branch")
echo $commit_id_latest

old_commit_id=$(</home/amitayare/file1.txt) 

echo "$value"  

if [ $new_commit_id == $old_commit_id ];

then 
	echo " NO new commits "
else
	echo " new commit id is FOUND "




commit_save=$(git log -n 1 --pretty=format:%H "$origin/$branch")
echo $commit_save > /home/amitayare/file1.txt 
<<<<<<< HEAD
=======
echo $commit_save
>>>>>>> 857e8ab1ade7d449843992fbe459a0e9319b3cc3

fi





