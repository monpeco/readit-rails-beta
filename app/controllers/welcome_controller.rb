class WelcomeController < ApplicationController
  def index
  end
  
  def help
    @message_controller = 'Message send from WelcomeController'
  end 
  
end
