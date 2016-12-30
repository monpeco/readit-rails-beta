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

--

###Create a controller
rails generate controller wellcome index

###Cambiar el root del sitio
`routes.rb`
 #root 'welcome#index'
  root 'welcome#index'

###Agregar texto simple a index view
`index.html.erb`
<%= 'Count to 10' %> <br>

<% 11.times do |i|  %>
  <%= i %>
<% end %>
    

###agregar otra vista
`sample.html.erb`
<%= 'Count to 10' %> <br>

<% 31.times do |i|  %>
  <%= i %>
<% end %>

###error
No route matches [GET] "/welcome/sample"

###Cambiar el root del sitio (funcionó)
`routes.rb`
  get 'welcome/sample'
  
###Método alternativo
`routes.rb`
  #get 'welcome/index'
  #get 'welcome/sample'
  match ':controller(/:action(/:id))', :via => :get    


###Enviar mensaje desde el controller a la vista
  def help
    @message_controller = 'Message send from WelcomeController'
  end 

###recibir mensaje en la vista desde el controller
`help.html.erb`
<%= "@message_controller: #{@message_controller}"%> <br>


###enviar mensaje via parametro al controller
`welcome_controller.rb`
  def help
    @message_controller = 'Message send from WelcomeController'
    if (params.has_key?(:id))
      @id_controller = params[:id] + '001'
    end
  end 
  
###enviar mensaje via parametro directo a otra vista
`sample.html.erb`
<%# link_to using action only %>
<%= link_to("Go to Help", {:action => 'help', :id => 45} ) %>

`help.html.erb`
<%= params[:id]  if (params.has_key?(:id)) %> <br>

###bitnami
###wappstack

###Conect db
rake db:schema:dump

###Execute migration
rake db:migrate