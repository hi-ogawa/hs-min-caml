#!/bin/bash

MINCAMLHS='./Main'
OCAML='ocaml'
SIM='../simulator/sim2'

TESTPATH='./test/'

function compile(){
    FILE=$1
    INLINE=$2
    echo "** COMPILE **" >&2
    ${MINCAMLHS} --file "${FILE}" --inline "${INLINE}" --iter 0
}
function simulate(){
    FILE=$1
    echo "** SIMULATING OCAML ${FILE} **" >&2
    ${OCAML} "${FILE}.ml" > "${FILE}.ans"
    echo "** SIMULATING MINCAML ${FILE} **" >&2
    ${SIM} "${FILE}.s" -c > "${FILE}.res"
}

FLG_A=0
FLG_S=0
FLG_B=0
FLG_I=0
FLG_T=0

INLINE=0

while getopts as:b:i:t: OPT
do
    case ${OPT} in
	"a" ) FLG_A=1 ;;			# all test
	"s" ) FLG_S=1 ; FILE="${OPTARG}";;	# simulate
	"b" ) FLG_B=1 ; FILE="${OPTARG}";;	# to binary
	"i" ) FLG_I=1 ; INLINE="${OPTARG}";;	# inline depth option
	"t" ) FLG_T=1 ; FILE="${OPTARG}";;	# simulate and testing 
    esac
done

if [ ${FLG_A} -eq 1 ]
then
    find ${TESTPATH} -maxdepth 1 -name "*.ml" | while read FILEml
    do
	FILE=`echo ${FILEml} | sed -e s/\.ml//`
	echo ${FILE} >&2
	compile ${FILE} ${INLINE}
	simulate ${FILE}
	diff "${FILE}.res" "${FILE}.ans" > "${FILE}.cmp"
	rm -rf "${FILE}.res" "${FILE}.ans"
    done
    echo "display the result of comparint OCAML and MINCAML"
    sleep 1
    find ${TESTPATH} -maxdepth 1 -name "*.cmp" | while read CMP
    do
	echo ${CMP}; cat ${CMP}; rm -rf ${CMP}
    done

elif [ ${FLG_S} -eq 1 ]
then
    compile ${FILE} ${INLINE}
    echo "** SIMULATING MINCAML ${FILE} **" >&2
    ${SIM} "${FILE}.s" -c

elif [ ${FLG_T} -eq 1 ]
then
    compile ${FILE} ${INLINE}
    simulate ${FILE}
    diff "${FILE}.res" "${FILE}.ans"
    rm -rf "${FILE}.res" "${FILE}.ans"

elif [ ${FLG_B} -eq 1 ]
then
    compile ${FILE} ${INLINE}
    ${SIM} "${FILE}.s" -b "${FILE}.b"
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