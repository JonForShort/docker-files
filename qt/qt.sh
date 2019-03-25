#!/usr/bin/env bash

cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ $# -eq 1 ]; then
    mapped_volume="-v ${1}:${1}"
else
    mapped_volume=""    
fi

docker run -it --rm ${mapped_volume} qt:latest
