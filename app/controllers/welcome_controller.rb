class WelcomeController < ActionController::Base 

  def index 
    @user = User.new
  end

end
