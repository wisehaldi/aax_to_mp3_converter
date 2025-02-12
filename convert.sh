#!/bin/bash 

#########################################################################################
### Bash script for transforming .aax files to .mp3 files ###############################
#########################################################################################

yourfilenames=`ls *.aax` 					# get list of .aax files

for eachfile in $yourfilenames					# go by each 
do
	echo $eachfile						# print aax name
	mp3file=$(echo $eachfile | sed -r 's/.aax/.mp3/g') 	# change endto mp3
	echo $mp3file						# print mp3 name
	
	ffmpeg -activation_bytes 92bcc42e -i $eachfile $mp3file	# transform

	sleep 10						# wait 10 s

	dirname=$(echo $mp3file | sed -r 's/.mp3//g')		# directory same as .aax without the extension.	
	echo $dirname	
	mkdir $dirname						# make directory
	mv $eachfile $mp3file $dirname/				# move aax and mp3 to directory
 
done

