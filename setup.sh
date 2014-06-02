#!/bin/sh

DIRPATH=$(cd $(dirname $0); pwd)

for FILE in ${DIRPATH}/\.[a-z]*
do
    if [ ${FILE##*/} != ".git" ]; then
        ln -sf ${FILE} ${HOME}/${FILE##*/}
        echo "Success: ${FILE##*/} -> ${HOME}/${FILE##*/}"
    fi
done

