#!/bin/bash

#MINCAML='./min-caml'
MINCAMLOPT='./min-caml.opt'
#SIM1='../simulator/sim1'
SIM2='../simulator/sim2'
#SIM3='../sim/sim'
OCAML='ocaml'

LIB_ML='./lib/mylib_ml.ml'
LIB_ASM='./lib/mylib_s.s'
TESTPATH='./test/'

FLG_A=0
FLG_F=0
FLG_C=0
FLG_S=0
FLG_B=0
FLG_I=0
INLINE=0

function compile(){
    FILE=$1
    INLINE=$2
    echo "** COMPILING ${FILE} **" >&2
    cat ${LIB_ML} "${FILE}.ml" > "${FILE}__.ml"
    ${MINCAMLOPT} -inline "${INLINE}" "${FILE}__"
    cat "${FILE}__.s" ${LIB_ASM} > "${FILE}.s"
    rm -rf "${FILE}__.ml" "${FILE}__.s"
}
function simulate(){
    FILE=$1
    echo "** SIMULATING OCAML ${FILE} **" >&2
    ${OCAML} "${FILE}.ml" > "${FILE}.ans"
    echo "** SIMULATING MINCAML ${FILE} **" >&2
    ${SIM2} "${FILE}.s" -c > "${FILE}.res"
}
#
# setting args or option
#
while getopts af:c:s:b:i: OPT
do
    case $OPT in
	"a" ) FLG_A=1 ;;				# all file testing
	"f" ) FLG_F=1 ; FILE="$OPTARG" ;;		# one file testing
	"c" ) FLG_C=1 ; FILE="$OPTARG" ;;		# compile ont file(~.ml -> ~.s)
	"s" ) FLG_S=1 ; FILE="$OPTARG" ;;		# simulation(~.ml)
	"b" ) FLG_B=1 ; FILE="$OPTARG" ;;		# (~.ml  ->  ~.b)
	"i" ) FLG_I=1 ; INLINE="$OPTARG" ;;
    esac
done
#
# start
#
rm -rf "${TESTPATH}*__.ml"

if [ ${FLG_A} -eq 1 ]	#### all file testing ####
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

elif [ ${FLG_F} -eq 1 ]	#### one file testing ####
then
    compile ${FILE}
    simulate ${FILE}
    diff "${FILE}.res" "${FILE}.ans"
    rm -rf "${FILE}.res" "${FILE}.ans" "${FILE}.s"

elif [ ${FLG_C} -eq 1 ] #### one file conpiling ####
then
    compile ${FILE} ${INLINE}

elif [ ${FLG_S} -eq 1 ] #### one file simulating ####
then
    compile ${FILE} ${INLINE}
    ${SIM2} "${FILE}.s" -c

elif [ ${FLG_B} -eq 1 ] #### to binary ####
then
    compile ${FILE} ${INLINE}
    ${SIM2} "${FILE}.s" -b "${FILE}.b"
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
