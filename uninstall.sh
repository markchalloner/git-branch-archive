#!/bin/bash
dirs=("${HOME}/bin" "/usr/local/bin" "/usr/bin" "/bin")
for i in "${dirs[@]}"
do
    GIT_PLUGIN=${i}/git-branch-archive
    if [ -f ${GIT_PLUGIN} ]
    then
        rm ${GIT_PLUGIN}
    fi
done
