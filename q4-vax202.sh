#!/bin/bash
# ^ shebsng line to use bash

################################################################################
# This code and its associated files were created at the instruction of        #
# professors at the University of Texas at San Antonio during my time as a     #
# student at the university. I, as a student, was not responsible for the idea #
# behind this code (i.e. project guidelines, functionality, and end purpose),  #
# but I, Matthew Thomas Beck, can confirm that myself and any project partners #
# (if applicable) were the ones responsible for writing it.                    #
################################################################################





###############################################
############### FILTER OUT JUNK ###############
###############################################


########## FILTER UNWANTED CONTENT FROM FILE ##########

##### get file to filter #####

inputFile="file1.php" # find file1 path junk to clean

outputFile="file1Clean.php" # set output path for cleaned up file

##### create a sed script to clean up file #####

# sed script to call later (I made it to be mroe readable and to be more "on-brand" with my coding style if want to show
# to hiring people)
sedScript='

    # replace lines starting with "//" with "// "
    s/^[[:space:]]*\/\/[[:space:]]*/\/\/ /

    # replace lines starting with "#" with "// "
    s/^[[:space:]]*#[[:space:]]*/\/\/ /

    # delete lines starting with "%"
    /^%/d
'


########## CREATE CLEANED FILE ##########

##### run sed script to create clean file #####

echo -e "\nAttempting to clean $inputFile...\n" # print filter update

sed "$sedScript" "$inputFile" > "$outputFile" # run sed script and pipe cleaned contents to output

echo -e "Successfully cleaned $inputFile and saved contents to $outputFile.\n" # print success statement

##### close script with success #####

exit 0 # exit script with success