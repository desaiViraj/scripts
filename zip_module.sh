#!/bin/bash
echo "----------------------------------------------------------"
echo "Shell Script to perform following tasks:-
1. ZIP the module directory
2. Upload ZIP module dir to remote host
3. Unzip the module dir
4. Run the script in remote machine"
echo "----------------------------------------------------------"
dir=/home/desai/scripts/modules
zip=/home/desai/scripts/modules.zip
#echo $dir
if [ -d $dir ] && [ ! -f $zip ]
then
	zip -r modules.zip /home/desai/scripts/modules | &>/dev/null
	echo "modules directory zipped"
else
	echo "Either directory exits or already zipped"
fi
echo "----------------------------------------------------------"
echo "Copying module.zip file to remote machine"
scp $zip desai@worker:/home/desai
if [ $? -eq "0" ]
then
	echo "File Copied to remote machine"
else	
	echo "File not copied"
fi
echo "----------------------------------------------------------"
echo "Unzipping the copied module file on remote machine"
ssh -t  desai@worker /bin/bash -- unzip modules.zip;cd home/desai/scripts/modules/;bash main.sh
echo "----------------------------------------------------------"
