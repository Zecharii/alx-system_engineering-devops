# Installs an Nginx server

exec {'install':
  provider => shell,
  command  => 'sudo apt-get -y update ; sudo apt-get -y install nginx ; echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html ; sudo sed -i '24i\       rewrite ^/redirect_me https://www.youtube.com/watch?v=Q7Phkq0BUXM permanent;/" /etc/nginx/sites-available/default ; sudo service nginx start',
}
