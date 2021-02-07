#! /bin/sh 
 	 
touch hamedAdeli.txt	#Creat file with my name. 
chmod 700 hamedAdeli.txt	#Chanege permissin to file , it just acessable by curent  user how make the file .
echo ""> hamedAdeli.txt Red/Tiger 	#Add data the file .
cat  hamedAdeli.txt 	#Show what is the file conatin .
echo Please give me test User name  and password? 		#Aske user fo  what is the username for testig command .
read -p 'Username: '  uservar 	# get user name and password in input silent
cwd=$(pwd) #get curent dirctory 
echo $cwd 
 su -c  cat $cwd hamedAdeli.txt $username 
 sudo chown root:root $cwd hamedAdeli.txt 	#Channge permissin of file to root 
 su root
 echo "">> hamedAdeli.txt Lion/Black