CREATE USER holberton_user@localhost IDENTIFIED BY "projectcorrection280hbtn";
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
CREATE DATABASE tyrell_corp;
USE tyrell_corp;
CREATE TABLE nexus6 (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL
);
INSERT INTO nexus6 (name) VALUES ("Ademola"), ("Peter"), ("Zechariah");
GRANT SELECT ON tyrell_corp.nexus6 TO holberton_user@localhost;
CREATE USER replica_user@'%' IDENTIFIED BY "password";
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
GRANT SELECT ON mysql.user TO holberton_user@localhost;
CREATE USER web02@52.3.254.158 IDENTIFIED BY "web02";
GRANT REPLICATION SLAVE ON *.* TO web02@52.3.254.158;
