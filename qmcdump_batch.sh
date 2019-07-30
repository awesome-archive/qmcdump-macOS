#!/bin/bash

# IFS（the Internal Field Separator）
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

# Work Path
echo Please input folder path:
read 'WORK_PATH'
List_WORK_FILE=`ls $WORK_PATH | grep -E 'qmc0|qmc3|qmcflac'`

# Decode Core
Exec_QMC_FILE='./qmcdump'

for file in $List_WORK_FILE
do
  $Exec_QMC_FILE $WORK_PATH/$file
done