#!/bin/bash


origin="origin"
branch="dev"
new_commit_id=$(git log -n 1 --pretty=format:%H "$origin/$branch")

echo $new_commit_id 

old_commit_id=$(git log -n 2 --pretty=format:%H "$origin/$branch" | tail -1 )
echo $old_commit_id


if [ $new_commit_id == $old_commit_id ];

then 
	echo " No new commits "
else
	echo " new commit id found "
	
	
	find /mnt/dev/ -name "*.env" -exec sed -i 's/APP_ENV=LOCAL/APP_ENV=DEV/g' {} \;

	find /mnt/testing/ -name "*.env" -exec sed -i 's/APP_ENV=LOCAL/APP_ENV=TEST/g' {} \;
	
	echo " Changes has been done "

fi

