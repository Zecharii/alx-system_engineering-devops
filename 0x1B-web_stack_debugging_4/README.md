tack debugging #4 
This project was done as part of the requirements for the **Software Engineering** program at **ALX**. It aims to teach us about debugging of web stacks.

## Learning Objectives
Learning how to:
* Use various debugging techniques to identify and fix issues in web applications, including error log analysis, code inspection, breakpoints, & print debugging.
* Use debugging tools and utilities.
* Diagnose and resolve issues relating to web server configuration, such as Apache, Nginx, or other server software.
* Diagnose and troubleshoot networking issues that may impact web application performance or availability, such as DNS resolution, firewall rules, load balancer configuration, etc.
* Troubleshoot database-related issues, including queries, indexing, performance tuning, and database connectivity problems.
* Identify and fix security vulnerabilities in web applications, such as cross-site scripting (XSS), SQL injection, CSRF, etc.
* Develop effective communication and collaboration skills to work with cross-functional teams, including developers, system administrators, network engineers, and security professionals, to resolve complex web stack issues.

## Technologies
* All files were interpreted/compiled on Ubuntu 14.04 LTS 
* All Puppet manifests passed `puppet-lint` version `2.1.1` without any errors

## Files

All the files used: 

| Filename | Description | Category |
| -------- | ----------- | -------- |
| `0-the_sky_is_the_limit_not.pp` | A puppet manifest that makes 2000 requests to a web server with 100 requests at a time | mandatory |
| `1-user_limit.pp` | A puppet manifest that changes the OS configuration of a server | advanced |
