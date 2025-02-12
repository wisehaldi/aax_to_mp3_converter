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

#########################################################################################
### INFO ABOUT CONVERSION ###############################################################
#########################################################################################

#COMMAND FORM:
#ffmpeg -activation_bytes XXXX -i audiobook.aax audiobook.mp3

#https://kylepiira.com/2019/05/12/how-to-break-audible-drm/

#########################################################
#ACTIVATION BYTES (activation key from Audible):
#https://audible-tools.kamsker.at/f92933e43390a900b8889efeade94fe3f6cbff44
#AAX Checksum Resolver: 
#f92933e43390a900b8889efeade94fe3f6cbff44
#92bcc42e

#REPLACE XXXX = 92bcc42e

#########################################################
#COMMAND with activation bytes:
#ffmpeg -activation_bytes 92bcc42e -i audiobook.aax audiobook.mp3


#########################################################
#REAL EXAMPLE:
#ffmpeg -activation_bytes 92bcc42e -i Deep-Survival-True-Stories-of-Miraculous-Endurance-and-Sudden-Death_ep6.aax Deep-Survival-True-Stories-of-Miraculous-Endurance-and-Sudden-Death_ep6.mp3

#mkdir Deep-Survival
#mv Deep-Survival-True-Stories-of-Miraculous-Endurance-and-Sudden-Death_ep6.aax Deep-Survival-True-Stories-of-Miraculous-Endurance-and-Sudden-Death_ep6.mp3  Deep-Survival/

#########################################################
#########################################################
#########################################################

