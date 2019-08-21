#!/bin/bash


scriptDir="$( cd "$( dirname "$0" )" && pwd )"

prefixName=gsaa.mard.lcl_

echo "prefixName: $prefixName"

# Check if already exists ctail script
file="$scriptDir/ctail"
cp "$file" /bin/ctail

#if [ -f "$file" ]
#then
#	echo "The script ctail already exists."
#else
#	cp "$file" /bin/ctail
#fi



scripts[0]=error


printf "\n\n\n\n\n #############################################\n Create terminal scripts for show error log"
printf "\n This scripts can use from terminal. \n"

for i in ${!scripts[*]}
	do
	    printf "\n Script: $prefixName${scripts[i]}"
	    chmod 777 "$scriptDir/${scripts[i]}"
		ln -sf "$scriptDir/${scripts[i]}" "/bin/$prefixName${scripts[i]}"
		chmod 777 "/bin/$prefixName${scripts[i]}"

	done

echo "\n\n URL: http://gsaa.mard.lcl/gsaa"

printf "\n\n Finish "
printf "\n #############################################\n"


gsaa.mard.lcl_error