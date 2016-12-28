###Dont Repeat You code - DRY
###Convention Over Configuration - COC

--
# 1.Crear app
    rails new readit -d mysql

# 2.Instalar todo lo que necesita la app
    bundle install

##investigar
    bundle exec

# 3.Se actualiza database.yml
    password: 
    password: password

    database: readit_development
    database: #readit_development

###error
Add `gem 'mysql2'` to your Gemfile (and ensure its version is at the minimum required by ActiveRecord)

# 4.Se actualiza `Gemfile`
    #gem 'mysql2'
    gem 'mysql2', '~> 0.3.18'

    bundle install

###error:
Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (111)

###para encontrar los puertos en el sistema (no funcionó)
sudo find / -type s

###para iniciar el servicio (funciono)
sudo service mysql start

###error
Access denied for user 'root'@'localhost' (using password: YES)

    1. 
    mysqld --skip-grant-tables
    
        mysqld: Can't change dir to '/var/lib/mysql/' (Errcode: 13)
        ls -la  /var/lib/mysql
        
    2. mysql -u root -p (luego otro enter)
    3. me doy cuenta que no tengo porque ponerle password, y que se lo debo quitar del database.yml