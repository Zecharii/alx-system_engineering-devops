# Laod balancer
This project was done as part of the requirements for the **Software Engineering** program at **ALX**. It aims to teach us about load balancers and how they help to achieve redundancy for our web servers.

## Technologies
* All Bash scripts passed `Shellcheck` version `0.3.7` without any error 
* All Bash scripts are executable
* All files are interpreted/compiled on Ubuntu 16.04 LTS

## Files

All the following files are scripts of MySQL:

| Filename | Description |
| -------- | ----------- |
| `0-custom_http_response_header` | A Bash script that configures a brand new Ubuntu machine and configures `web-02` to be identical to `web-01` |
| `1-install_load_balancer` | A Bash script that configures a new Ubuntu machine and innstalls and configures HAproxy on your `lb-01` server |
| `2-puppet_custom_http_response_header.pp` | A Puppet script that configures a brand new Ubuntu machine and creates a custom HTTP header response |
