# aax_to_mp3_converter
Bash script for transforming .aax files to .mp3 files


### HOW TO USE IT

Run in terminal from the folder with .aax files with ./convert.sh
   
####################################
####################################
####################################
### DETAILED INFO ABOUT CONVERSION

### COMMAND FORM:
ffmpeg -activation_bytes XXXX -i audiobook.aax audiobook.mp3

(More information on ffmpeg at https://kylepiira.com/2019/05/12/how-to-break-audible-drm/)

### ACTIVATION BYTES (activation key from Audible):
(Get activation key at: https://audible-tools.kamsker.at/f92933e43390a900b8889efeade94fe3f6cbff44)

AAX Checksum Resolver: f92933e43390a900b8889efeade94fe3f6cbff44

activation_bytes: 92bcc42e

### COMMAND with activation bytes:

REPLACE XXXX = 92bcc42e

ffmpeg -activation_bytes 92bcc42e -i audiobook.aax audiobook.mp3

### REAL USAGE EXAMPLE:
ffmpeg -activation_bytes 92bcc42e -i Deep-Survival-True-Stories-of-Miraculous-Endurance-and-Sudden-Death_ep6.aax Deep-Survival-True-Stories-of-Miraculous-Endurance-and-Sudden-Death_ep6.mp3

mkdir Deep-Survival
mv Deep-Survival-True-Stories-of-Miraculous-Endurance-and-Sudden-Death_ep6.aax Deep-Survival-True-Stories-of-Miraculous-Endurance-and-Sudden-Death_ep6.mp3  Deep-Survival/
