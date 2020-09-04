#!/bin/bash

clear

cd ../Downloads

echo '=========================='
echo '          HASHER          '
echo '=========================='

printf '\nEnter the checksum: '
read CHECKSUM

printf '\nEnter file to hash: '
read FILE

echo ''
echo '=========================='
echo '       HASH OPTIONS       '
echo '=========================='
echo ' [1] MD5                  '
echo ' [2] SHA1                 '
echo ' [3] SHA256               '
echo ' [4] SHA512               '
echo '=========================='
printf '\nEnter choice: '

read CHOICE 

if [[ $CHOICE -eq 1 ]];

    then

        echo
        echo "CHECKSUM -> $CHECKSUM"
        HASH=$(md5 $FILE)
        echo "FILEHASH -> $HASH"
        echo

elif [[ $CHOICE -eq 2 ]];

    then

        echo
        echo "CHECKSUM -> $CHECKSUM"
        HASH=$(shasum $FILE)
        echo "FILEHASH -> $HASH"
        echo $HASH

elif [[ $CHOICE -eq 3 ]];

    then

        echo 
        echo "CHECKSUM -> $CHECKSUM"
        HASH=$(shasum -a 256 $FILE)
        echo "FILEHASH -> $HASH"
        echo
        
else

        echo 
        echo "CHECKSUM -> $CHECKSUM"
        HASH=$(shasum -a 512 $FILE)
        echo "FILEHASH -> $HASH"
        echo

fi

cd - 2&>1