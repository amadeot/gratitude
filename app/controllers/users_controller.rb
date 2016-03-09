class UsersController < ActionController::Base 

  def new 
    @user = User.new
  end

  def create
    tw_account_sid = ENV['TWILIO_SID_JESS']
    tw_auth_token = ENV['TWILIO_TOKEN_JESS']
    @user = User.create(user_params)
    puts "start"
    puts tw_account_sid 
    puts tw_auth_token  
    puts "end"
    @client = Twilio::REST::Client.new(tw_account_sid, tw_auth_token)
 
    puts @client.account

    @client.account.messages.create({
      :from => '+19143713089', 
      :to => @user.phone, 
      :body => 'testing this shit ' + @user.username
    })

    redirect_to '/'
  end

private
  def user_params
    params.require(:user).permit(:phone, :username, :password, :password_confirmation, :active, :start_range, :end_range) 
  end
end