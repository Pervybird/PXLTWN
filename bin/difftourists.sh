#!/bin/bash
if [ ! -f tourists.count ]
then `sh giefcount.sh > tourists.count`
fi

touristsCountCurrent=`cat tourists.count`
touristsCountNew=`sh giefcount.sh`
if [ ${touristsCountCurrent} -ne ${touristsCountNew} ]
then 
	echo "LIGHTSCAMERAACTION" ;
echo "${touristsCountNew}" > tourists.count
fi
