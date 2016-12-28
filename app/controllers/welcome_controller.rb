class WelcomeController < ApplicationController
  def index
  end
  
  def sample
  end

  def help
    @message_controller = 'Message send from WelcomeController'
    if (params.has_key?(:id))
      @id_controller = params[:id] + '001'
    end
  end 
  
end
