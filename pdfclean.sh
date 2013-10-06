#!/bin/bash

echo "*******************"
echo "-------Files: "
point=$1
for point;
do
	echo $point
done

if [ $# -gt 0];then
	echo "Your command line contains $# arguments"
	echo "---------------------------------------"
else
	echo "Your command line contains no arguments"
fi


# Loop over all parameters
while [ "$1" != "" ]; do
	filename=${1%.pdf}
	cleanfilename=${filename/%-eps-converted-to}
        cleanfile=$cleanfilename.pdf
        echo "File to be cleaned is: $filename"
        mv $1 $cleanfile
	echo "A pdf file called $cleanfile has been created"
        echo "----------"

	#shift all the parameters down by one
	shift

done
