cat /etc/hosts   ---- change the host file
cat /etc/shells ---- to display total shells in our system
sleep (sec) ----- to sleep and run
$? --- when code is succesfull it return 0
$1 ---- to get a input in same line
echo ${#variable} ---- to display the string count
set -x ---- to print with an command
set -n ---- to debug the code while running
set -e ---- to stop the while code in error

grep{
grep -v "#"  ---- to grep the details except this
grep -i string ---- to remove the case sencitive
grep -w ---- match exact word
grep -v --- to print execpt that line
grep -o --- to print exact word only
grep -n --- to match the line number
grep -c ---- to match the line count
grep -A "string" 1 --- the string is match print after one line
grep -B "string" 2 --- the string is match print before one line
grep -C 1 "string" --- before and after print 1 line
grep -r "string" * --- to search n a recucive dir
grep -l "string" --- to print only file names
grep -h "sting" --- to hide the file name
grep -f file filename --- to search from a file
grep -E "string|srting|string" --- check with a multiple string
grep "^string" --- to print the starting line with the string
grep "string$"  ---- to printthe match word with the end
grep "^$" filename --- to match with an empty line
grep "\^" --- print the exact word on it
grep "t...e" --- to match with first and last letter on the string
grep "\bline\b" --- to print the word and end with the space
grep "yf?" --- the f in the string is may be or not 
grep "yf*" ---- have f or mor time
grep "[yft]" ---- split with an multiple char
grep "yf+" --- the f in the string is maybe one time or more time
grep "[a-f]" --- to search with a char to find with a to f 
grep "[a-dp-r]"  --- to print with a secquance word
grep "^[xy]" --- to print the line it starting with x and y
grep "x{4}" --- check with 4 times
grep "gf{3,4}\b" --- 3 , 4 time only
grep "[[:digit:]] filename --- to print the number where in the line
grep "[[:upper:]] filename  --- to print the upper case letter
grep "[[:lower:]] filename --- to print the lower case letter
}

jq{
cat filename | jq '.'  --- display in a standed format
cat filename | jq -c  '.[]' --- display output in a line formate
}

cut{
cut -f 2 filename  ---- to seprate with  the tab
cut -d ':' -f 2,4 filename  ---- to filter with custom symbole
cut -d ':' -1,4 filename --output-delimiter=" " ---- to print the output with a space
cut -sf 1 filename ---- to execute with wich line we have to seprate

}
awk{
awk  ' /version/ { print $4 } ---- to sperate with a name
awk  ' NR==1 { print $4 } ---- to sperate with a name ----- print with a line number
awk -F '[ /]' '/version { print $4 } ---- to sperat with a field
awk 'BEGIN { OFS="_" } { print $1,$3 } --- it is sperate with the dlimeter
awk  ' { print NR,$4 } ---- to print with a line number
awk  ' { print NR,$4,NF } ---- to print with a line number and colum
awk  ' { print $NF } ---- to print the last value from the coloum
}

tr{
tr '[:upper:]' '[:lower:]' < filename ---- convert upper to lower
tr 'i' 'I' < filename ---- change the letter
tr -d ',' ---- to delete a command
tr -d '[()]' ---- to delete a multiple command
}

sed {
sed ' ' filename ---- to work like a cat command
sed -n '3p' filename  ------- to print exact line
sed -n '3,10p' filename ---- to print in a range line
sed -n '3,+7p' filename  ---- to print a count number
sed -n '3~7p' filename  ---- to print 3,7,10,13 count 3++
sed '4d' filename ----- to delete 4 line  doesn't use -n to delete
sed -i '4,6d' filename ---- to remove the value from the orginal file

}
if [ $num1 -gt $num2 -o $num3 -lt $num4 ] ---- to single square bracket use operator letter
if [[ $num1 -gt $num2 || $num3 -lt $num4 ]] ---- to double square bracket use symbole
if (( $num1 > $num2 )) --- use simples on circle bircket

$(whoami) ----- to use the defalt command method
echo $SHELL --- to display the current shell is our system
ps $$  --- to display the current shell is our system
ctrl + u ---- to erase the complete line
ctrl + w --- to remove the particular word
type -a (command name) --- to identify the command type
#!/bin/bash --- to mention the execute path
chmod +x filename ---- to change the permission of the file
./filename ---- to execute the file from the terminal
#!/usr/bin/env bash  --- to create a env on our bash file
# ---- single line command
<<(mention any word ending with the same name)  ----- to put a multi-line command
example
<<SAMPLE
dkgjkndklgj
dogged
SAMPLE   ---- to end it
variables two type
   -system
       upper case
       env
   - user-defined
        lowercase
    var="sai" 
    echo $var --- to print the output
    don't use space to declare the variable
case sensitive 
${var}var  ---- use { } to decular the variable
echo "hello world $(whoami)"  --- to execute the shell command using $()
echo 'hello world $HOME' --- doesn't execute the script
\ --- to work like a single qoutes
ls \  && pwd --- to use a multi line command in a same script
unset SAMPLE --- to un set delete variable 
read -p "ENTER USER NAME:"  (variable) --- to input the user name from prompt 
(-p) -- prompt
(-t) --- time out input
(-s) --- password input doesn't input
echo $variable  ---- to print the user name
echo $(( 1+1 )) --- to use operation +,- , /,%,*
declare -i int=100 ---- to decule a integer data type
readony variable ----- used to doesn't change the value
${newvariable?errormessage} ---- to identiye a decular variable
alias --- to set our own command
PS1="TERMINAL"  ---- to change our own terminal command
PS1="\u@defined name" ---- to custom our terminal
echo $? --- to check the previes command state
test 10 -gt 5 && echo "10 is greater" || echo "no" --- test command is used to return boolen values
[ 10 -gt 15 ] ---- same like a test command
((10<15)) --- same like that

if and elif condition
if [ 10 -gt 5 ]
then 
      echo "10 is greater"
elif [ 10 -gt 20 ]
then 
     echo "equal"
else
      echo "not"
fi

number comparisons
gt --- gather than <
lt---- less than >
ge --- greater or equal to <=
le --- less than or equal to >=
eq ---- equal to =
ne ---- not equal to !=
-a --- and &
-o --- or |

array 
x=(1 3 5 "sai")
echo "${x[*]}"  ---- print all number

string comparisons
=
!=
-z ---- not null value check

file comparisons
 -b
-c  
-d  ---- to check a directory
-f  ---- to check a regular file

cli position
echo $0 --- correct script variable 
echo $IFS ---- tab char
cat -stv <<< $IFS --- to display non printable char

case statements switch case 

case $var in 
        "sai") echo "in side " ;;
         "nmap") "scan tool" ;;
          *) echo "no value" ll
esac

loops

for 
in 
(()) 
  for x in 1 2 3 4 5 6 7 8 
   do
        echo $x
   done

for (( i=1; i < 10 ; i++ ))
do 
      for(( j=1 ; j < 10 ; j++ ))
      do
             echo ${i}${j}   || printf "\n"
       done
done
-----------
while
while [ expression ]
do
....
done

while :
do
.....
done    ----- infinity loop syntex
-------------
--function--

function sai(){
echo good boy;
}
sai;
sai;
------------


my=0
while :
do
read -p "value : " my
  if [[ $my -eq 0 ]]
  then
    echo "running"
  else

-----
while get input from another file
while IFS="," read f1 f2 f3 f4
do   
  echo "$f2"
done < filename
----
input two value and print it
read x;
read y;
echo $((x+y));
echo $((x-y));
echo $((x*y));
echo $((x/y));

