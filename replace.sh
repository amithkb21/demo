#!/bin/bash

origin="origin"
branch="deploy"
new_commit_id=$(git log -n 1 --pretty=format:%H "$origin/$branch")
echo $commit_id_latest

old_commit_id=$(</home/amitayare/file1.txt) 


if [ $new_commit_id == $old_commit_id ];

then 
	echo " NO new commits "
else
	echo " new commit id is FOUND "
	
	find /var/www/html/wl2/dev/ -name "*.env" -exec sed -i 's/LOCAL/DEV/g' {} \;
	find /var/www/html/wl2/testing/ -name "*.env" -exec sed -i 's/LOCAL/TEST/g' {} \;
	
	git add --all
	git commit -m " COMMIT CODE "
	git push origin deploy
	
	git checkout test
	git merge deploy

#testing

commit_save=$new_commit_id
echo $new_commit_id > /home/amitayare/file1.txt 
echo $commit_save

fi
