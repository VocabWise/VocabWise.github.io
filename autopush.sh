#!/bin/bash

# default commit message
commit_msg="auto update"

# 解析命令行参数
while [[ $# -gt 0 ]]; do
    case "$1" in
        -m|--message)
            commit_msg="$2"
            shift 2
            ;;
        *)
            shift
            ;;
    esac
done

python yml_autobuild.py
mkdocs gh-deploy --force
git add .
git commit -m "$commit_msg"
git push