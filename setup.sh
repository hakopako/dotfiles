#!/bin/sh

DIRPATH=$(cd $(dirname $0); pwd)

while getopts drh OPT
do
	case $OPT in
		"d" ) FLAG_D="TRUE" ;;
		"r" ) FLAG_R="TRUE" ;;
		"h" ) FLAG_H="TRUE" ;;
	esac
done

if [ "$FLAG_D" = "TRUE" ]; then
	for FILE in ${DIRPATH}/\.[a-z]*
	do
		if [ ${FILE##*/} != ".git" ]; then
			echo "${FILE##*/} -> ${HOME}/${FILE##*/}"
		fi
	done
	exit 0
fi

if [ "$FLAG_R" = "TRUE" ]; then
	for FILE in ${DIRPATH}/\.[a-z]*
	do
		if [ ${FILE##*/} != ".git" ]; then
			ln -sf ${FILE} ${HOME}/${FILE##*/}
			echo "Success: ${FILE##*/} -> ${HOME}/${FILE##*/}"
		fi
	done
	exit 0
fi

if [ "$FLAG_H" = "TRUE" ]; then
	echo "--[ USAGE ]-------------"
	echo "  'sh setup.sh [OPTION]' "
	echo ""
	echo "--[ OPTIONS ]-----------"
	echo "  -d , dry-run"
	echo "  -r , run"
	echo "  -h , help"
	echo ""
	exit 0
fi

echo "unknown command. try option '-h' to see usage."


