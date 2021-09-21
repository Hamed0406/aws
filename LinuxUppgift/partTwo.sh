#! /bin/sh

sudo apt update -y  #Update all repo
sudo apt install nginx -y #install Nginx -y with answer all question yes .
sudo apt install curl -y
sudo mkdir /var/www/html/hamedadeli.me/   #make dirctory with hamedadeli-nginx
sudo touch /var/www/html/hamedadeli.me/index.html

sudo echo   >  /var/www/html/hamedadeli.me/index.html "

<html>

  <head>

  </head>

  <body>

  <h1>Hamed Adeli</h1>

  </body>

</html>"

  # create  index.html 
 sudo touch /etc/nginx/sites-enabled/hamedadeli.me

sudo echo  >  /etc/nginx/sites-enabled/hamedadeli.me "server {

       listen 8080;

       listen [::]:8080;

       root /var/www/html/hamedadeli.me;

       index index.html;

       server_name hamedadeli.me www.hamedadeli.me;


       location / {

               try_files $uri $uri/ =404;

       }

}"

 # sudo ln -s /etc/nginx/sites-available/hamedadeli.me  /etc/nginx/sites-enabled/hamedadeli.me
# create  config  for  static website 

sudo systemctl enable nginx.service   #enbale enginx 

sudo systemctl restart nginx.service  # retart nginx
curl  localhost:8080
