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

###exit msql
EXIT

###renter mysql
mysql -u readidadmin -p

###Conect db
rake db:schema:dump

###mostrar estructura
desc users;

###ver el status de las migraciones
rake db:migrate:status

###ir a una migracion en particular
rake db:migrate VERSION=0