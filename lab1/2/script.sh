#!/bin/bash
roll=CED17I033
name="Aviral Rai"
echo My name is $name and my roll no. is $roll.
type grep
type echo

echo 'home: $HOME'
echo "home: $HOME"

ls *.sh
cat script.sh | wc

(cd ~/Music;pwd)
musicPath=$(cd ~/Music;pwd)
echo music path is $musicPath

x=(1 2 3 4 5 6)

y=$((5+2))
echo $y
 

if [[ "$name" == "$roll" ]]
then
    echo "same name and roll"
else
    echo "name and roll NOT same"
fi

if [[ -z "$name" ]]
then
echo "empty string"
else echo "non empty string"
fi

if [[ -e script.sh ]]
then
echo "file exist"
else echo "non empty string"
fi
if [[ -e script.txt ]]
then
echo "file exist"
else echo "file not exist"
fi

if [ -e script.sh ] && [ -e script.txt ]
then
echo "both exist"
else echo "both does not exist"
fi

for i in aviral rai is student .
do 
    echo $i 
done

for i in ${x[@]}
do 
    if [[ "$i" == 3 ]]
    then
        echo $i " is in array x"
    fi
done

echo "Enter admission Year and graduation Year:(with space)"
read -r admYear gradYear
echo "Total year of study is " $(($gradYear - $admYear))

sayHello(){
    local x=$(date)
    echo "Hello! $1 today is $x"
}
sayHello Aviral

