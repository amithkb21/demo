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




commit_save=$new_commit_id
echo $new_commit_id > /home/amitayare/file1.txt 
echo $commit_save

fi





