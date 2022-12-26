#!/bin/bash


origin="origin"
branch="dev"
commit_id=$(git log -n 1 --pretty=format:%H "$origin/$branch")

echo $commit_id 

commit_old=$(git log -n 2 --pretty=format:%H "$origin/$branch" | tail -1 )
echo $commit_old


if [ $commit_id == $commit_old ];

then 
	echo " No new commits "
else
	echo " new commit id found "
	
	git checkout test
	git merge dev

fi

