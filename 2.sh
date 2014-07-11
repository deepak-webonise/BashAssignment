#!/bin/sh
count=0
cd /home/webonise/test/
ls -x1  *.txt > files
while read line    
do 
   name="xy$count.txt"
  tee mv $line $name
   count=$((count+1));
done < files
#Rename  files start with x and storing file name in assignment.log 
while read line    
do 
   name="zy$count.txt"
  mv $line $name
   count=$((count+1))
done < files
date > assignment.log
ls -x1  z* >> assignment.log
#checking directory exist if removing
if [ -d public_html/ ]
then
	
	rm -R public_html
fi
mkdir public_html
chmod 777 public_html
echo "~public_html" > public_html/readme.txt
#copy 4 files to public_html
ls -x1 z* > files
c=0
while read line    
do 
   
    if [ $c -gt  3 ]
   	then
   		break;
   fi
  cp $line public_html/
   		c=$((c+1))
  
done < files
#copy public_html inside same folder and rename
cp -R public_html temp/
cp  -R temp/public_html  public_html/
rm -R temp/public_html
cd public_html
mv public_html a

