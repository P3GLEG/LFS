#!/bin/sh

getPackage(){
    packageName=$1
    packageLocation=$2
    #echo "Retrieving ${packageName}"
    if [ "git" == "${packageLocation##*.}" ]; then
        echo "Retrieving ${packageName}"
        git submodule add $packageLocation
    else
        echo $packageLocation
        #curl $packageLocation | tar xvz
    fi
}
while read -r line; do
    getPackage $line
done < packages.txt


