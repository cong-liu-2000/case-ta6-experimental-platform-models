#!/usr/bin/env bash
#
# This file is autogenerated.  Do not edit
#
set -e

export SCRIPT_HOME=$( cd "$( dirname "$0" )" &> /dev/null && pwd )
cd $SCRIPT_HOME
export BASE_NAME=sb_CASE_Filter_LST_thr_Impl
cd ${SCRIPT_HOME}/src
# ODROID is arm7
# cake32 --target=arm7 --heap_size=4 --stack_size=4 < ${SCRIPT_HOME}/src/${BASE_NAME}.cml > ${SCRIPT_HOME}/src/${BASE_NAME}.S
cake --heap_size=4 --stack_size=4 < ${SCRIPT_HOME}/src/${BASE_NAME}.cml > ${SCRIPT_HOME}/src/${BASE_NAME}.S
sed -i 's/cdecl(main)/cdecl(run)/' ${SCRIPT_HOME}/src/${BASE_NAME}.S
