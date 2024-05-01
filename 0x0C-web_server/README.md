# Web Server
This project was done as part of the requirements for the **Software Engineering** program at **ALX**. It aims to teach us how the web works, how to configure Nginx, HTTP requests & redirection and log files on Linux.

## Technologies
* All Bash scripts passed `Shellcheck` version `0.3.7` without any error 
* All Bash scripts are executable
* All files are interpreted/compiled on Ubuntu 16.04 LTS

## Files

| Filename | Description |
| -------- | ----------- |
| `0-transfer_file` | A Bash script that transfers a file from our client to a server |
| `1-install_nginx_web_server` | A Bash script that configures a new Ubuntu machine to install `nginx` on `web-01` server |
| `2-setup_a_domain_name` | Setting up a domain and configuring DNS records with an A entry so that the root domain points to `web-01` IP address |
| `3-redirection` | A Bash script that configures a new Ubuntu machine and configures Nginx so that `/redirect_me` is redirecting to another page |
| `4-not_found_page_404` | A Bash script that configures Nginx server to have a custom 404 page that contains the string `Ceci n'est pas une page` |
| `7-puppet_install_nginx_web_server.pp` | A Puppet script that installs and configures Nginx server to perform a 301 redirect |

## Resource

- [Child process](https://www.gnu.org/software/libc/manual/html_node/Processes.html#Processes")
- [Background contenxt](https://www.youtube.com/watch?v=AZg4uJkEa-4)
- [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)
- [Nginx](https://en.wikipedia.org/wiki/Nginx)
- [How to Configure Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
- [Root and sub domain](https://landingi.com/help/domains-vs-subdomains/)
- [HTTP requests](https://www.tutorialspoint.com/http/http_methods.htm)
- [HTTP redirection](https://moz.com/learn/seo/redirection)
- [Not found HTTP response code](https://en.wikipedia.org/wiki/HTTP_404)
- [Logs files on Linux](https://www.cyberciti.biz/faq/ubuntu-linux-gnome-system-log-viewer/)
- [RFC 7231 (HTTP/1.1)](https://datatracker.ietf.org/doc/html/rfc7231)
- [RFC 7540 (HTTP/2)](https://datatracker.ietf.org/doc/html/rfc7540)

## Tasks
* Task 0
- ssh into web-01
```ssh ubuntu@34.232.68.92`
```
- create a file (say "client_to_server") and add below code
```
#!/usr/bin/env bash
# Transfers a file from a client to a server
if [ "$#" -lt 3 ]
then
    echo "Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY"
elif [ "$#" -eq 3 ]
then
    scp -o StrictHostKeyChecking=no "$1" "$3@$2:~/"
else
    scp -o StrictHostKeyChecking=no -i "$4" "$1" "$3@$2:~/"
fi
```
- make the file executable
```
chmod u+x client_to_server
```
- run your file as a superuser
```
sudo ./client_to_server
```
- you should get this response
`Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY`
- test your work

* Task 1
- ssh into web-01
```ssh ubuntu@34.232.68.92`
```
- create a file (say "install_nginx") and add below code
```
#!/usr/bin/env bash
# Script that installs Nginx server
apt-get -y update
apt-get -y install nginx
echo "Hello World!" > /var/www/html/index.nginx-debian.html
service nginx start
```
- make the file executable
```
chmod u+x install_nginx
```
- run your file as a superuser
```
sudo ./install_nginx
```
- test your work
* on server terminal, use
```
curl localhost
```
* on local terminal, use
```
curl -sI 34.232.68.92
```
