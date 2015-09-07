#!/bin/bash
#
# Archive branch as tag

branch=${1}
if [ -z "${branch}" ]
then
    branch=$(git rev-parse --abbrev-ref HEAD)
fi

if [ "${branch}" == "master" ]
then
    echo "Error: Unable to archive ${branch}"
    exit
fi

if [ "${branch}" == "HEAD" ]
then
    echo "Error: Unable to archive detached HEAD"
    exit
fi

tag="archive/${branch}"

git checkout master && \
git tag ${tag} ${branch} && \
git push origin ${tag} && \
git branch -D ${branch} && \
git push origin :${branch}
