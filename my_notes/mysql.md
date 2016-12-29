###open mysql
mysql -u root -p

###create database
CREATE DATABASE readit_development;

###show databases
SHOW DATABASES;

###change to database
USE readit_development;

###Grant persisses
GRANT ALL PRIVILEGES ON readit_development.*
to 'readidadmin'@'localhost'
IDENTIFIED BY 'password';

EXIT


