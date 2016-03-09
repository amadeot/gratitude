class MessagesController < ActionController::Base

  def index
    puts params["Body"]
    @gratitude = Gratitude.create({message: params["Body"], message_date: Date.now})
    @user = User.find_by({id: 1})
    @user.gratitudes.push(@gratitude)
  end


end