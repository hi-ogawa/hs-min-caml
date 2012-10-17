#!/bin/bash

MINCAML='./min-caml'
SIM2='../simulator/sim2'
OCAML='ocaml'

LIB_ML='./lib/mylib_ml.ml'
LIB_ASM='./lib/mylib_s.s'
TESTPATH='./test/'

FLG_A=0
FLG_F=0
FLG_C=0

function compile(){
    FILE=$1
    echo "** COMPILING ${FILE} **"
    cat ${LIB_ML} "${FILE}.ml" > "${FILE}__.ml"
    ${MINCAML} "${FILE}__"
    cat "${FILE}__.s" ${LIB_ASM} > "${FILE}.s"
    rm -rf "${FILE}__.ml" "${FILE}__.s"
}
function simulate(){
    FILE=$1
    echo "** SIMULATING OCAML ${FILE} **"
    ${OCAML} "${FILE}.ml" > "${FILE}.ans"
    echo "** SIMULATING MINCAML ${FILE} **"
    ${SIM2} "${FILE}.s" > "${FILE}.res"
}
#
# setting args or option
#
while getopts af:c: OPT
do
    case $OPT in
	"a" ) FLG_A=1 ;;				# all
	"f" ) FLG_F=1 ; FILE_="$OPTARG" ;;		# one file
	"c" ) FLG_C=1 ; FILE_="$OPTARG" ;;		# compile ont file(~.ml -> ~.s)
    esac
done
#
# start
#
make byte-code >& /dev/zero
rm -rf "${TESTPATH}*__.ml"

if [ ${FLG_A} -eq 1 ]
then
    find ${TESTPATH} -maxdepth 1 -name "*.ml" | while read FILEml
    do
	FILE=`echo ${FILEml} | sed -e s/\.ml//`
	echo ${FILE}
	compile ${FILE}
	simulate ${FILE}
	diff "${FILE}.res" "${FILE}.ans" > "${FILE}.cmp"
	rm -rf "${FILE}.res" "${FILE}.ans" "${FILE}__.ml" "${FILE}.s"
    done
    echo "display the result of comparint OCAML and MINCAML"
    sleep 1
    find ${TESTPATH} -maxdepth 1 -name "*.cmp" | while read CMP
    do
	echo ${CMP}; cat ${CMP}; rm -rf ${CMP}
    done

elif [ ${FLG_F} -eq 1 ]
then
    FILE=$TESTPATH$FILE_
    compile ${FILE}
    simulate ${FILE}
    diff "${FILE}.res" "${FILE}.ans"
    rm -rf "${FILE}.res" "${FILE}.ans" "${FILE}.s"

elif [ ${FLG_C} -eq 1 ]
then
    compile $TESTPATH$FILE_
fi
