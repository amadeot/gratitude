class MessagesController < ActionController::Base

  def index
    puts params["Body"]
  end
  
end