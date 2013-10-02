#!/bin/bash

echo "**************"
echo "---Files: "
point=$1
for point;
do
	echo $point
done
#echo 'The number of arguments = ' $#

if [ $# -gt 0 ]; then
	echo "Your command line contains $# arguments"
	echo "---------------------------------------"
else
	echo "Your command line contains no arguments"
fi

# Loop until all parameters are used up
while [ "$1" != "" ]; do
	#echo "Parameter 1 equals $1"
	#echo "You now have $# positional parameters"
	filename=${1%.ps}
	epsifile=$filename.epsi
	epsfile=$filename.eps
	echo "File to be converted is: $filename"
	ps2epsi $1
	mv $epsifile $epsfile
	echo "An eps file called $epsfile has been created"
	echo "---------"

	#shift all the parameters down by one
	shift

done
