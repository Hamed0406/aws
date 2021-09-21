#! /bin/sh

sudo apt update -y  #Update all repo
sudo apt install nginx -y #install Nginx -y with answer all question yes .
sudo apt install curl -y
sudo mkdir /var/www/html/mywebsite-nginx/   #make dirctory with hamedadeli-nginx
sudo touch /var/www/html/mywebsite-nginx/index.html

echo   >  /var/www/html/mywebsite-nginx/index.html "

<html>

  <head>

  </head>

  <body>

  <h1>Hamed Adeli</h1>

  </body>

</html>"

  # create  index.html 

sudo touch /etc/nginx/sites-enabled/hamedadeli

echo  >  /etc/nginx/sites-enabled/hamedadeli "server {

       listen 8080;

       listen [::]:8080;



       server_name hamedadeli.com;



       root /var/www/html/mywebsite-nginx/;

       index index.html;



       location / {

               try_files $uri $uri/ =404;

       }

}"

# create  config  for  static website 

sudo systemctl restart nginx.service  # retart nginx
sudo systemctl enable nginx.service   #enbale enginx 
curl  localhost:8080
