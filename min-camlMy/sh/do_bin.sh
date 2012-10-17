#!/bin/bash

# HOW TO USE
# $ ./to_bin.sh -f [filename]  ==>> assemble one file
# $ ./to_bin.sh -d [directory] ==>> assemble all file(.ml) in the directory

MINCAML='./min-caml'
SIM1='../simulator/sim1'

LIB_ML='./lib/mylib_ml.ml'
LIB_ASM='./lib/mylib_s.s'
TESTPATH='./test/'

FLG_A=0
FLG_F=0

function compile(){
    FILE=$1
    echo "** COMPILING ${FILE} **"
    cat ${LIB_ML} "${FILE}.ml" > "${FILE}__.ml"
    ${MINCAML} "${FILE}__"
    cat "${FILE}__.s" ${LIB_ASM} > "${FILE}.s"
    rm -rf "${FILE}__.ml" "${FILE}__.s"
}
#
# args and option setting
while getopts af: OPT
do
    case $OPT in
	"a" ) FLG_A=1;;				# assemble all files
	"f" ) FLG_F=1;  FILE_="$OPTARG";;	# assemble one file
    esac
done
#
# start here
if [ ${FLG_A} -eq 1 ]
then
    echo "haven't implemented yet"
elif [ ${FLG_F} -eq 1 ]
then
    FILE=$TESTPATH$FILE_
    compile ${FILE}
    ${SIM1} "${FILE}.s" "${FILE}.b"
    WC=`wc -l ${FILE}.b | cut -d ' ' -f 1`	# line num
    N_POW2=1					# 2のn乗
    while [ ${N_POW2} -lt ${WC} ]
    do
	N_POW2=`expr ${N_POW2} + ${N_POW2}`
    done
    LOOP=`expr ${N_POW2} - ${WC}`		# zero詰めする行数
    while [ ${LOOP} -gt 0 ]
    do
	LOOP=`expr ${LOOP} - 1`
	echo "00000000000000000000000000000000" >> "${FILE}.b"
    done
fi
