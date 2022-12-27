#!/bin/bash

origin="origin"
branch="test"
new_commit_id=$(git log -n 1 --pretty=format:%H "$origin/$branch")
echo " new id $new_commit_id"
echo $new_commit_id

old_commit_id=$(</home/amitayare/file1.txt) 

echo "$old_commit_id"  

if [ $new_commit_id == $old_commit_id ];

then 
	echo " NO new commits "
else
	echo " new commit id is FOUND "

commit_save=$new_commit_id
echo $new_commit_id > /home/amitayare/file1.txt 

echo $commit_save
echo " new id $commit_save"

fi





