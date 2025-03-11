#!/usr/bin/env bash

# example:
# project_init.sh baidu-seo-auto-push-daily /Users/darian/WebstormProjects

# first param
project_parent_directory=$1
# second param
project_name=$2
github_gitee_name=nogeek-cn

# project_name=nogeek.cn

# first into the parent_directory
cd ${project_parent_directory}
mkdir ${project_name}
cd ${project_name}
git init
git remote add gitee git@gitee.com:${github_gitee_name}/${project_name}.git
git remote add github git@github.com:${github_gitee_name}/${project_name}.git
git pull gitee master
git pull github master
