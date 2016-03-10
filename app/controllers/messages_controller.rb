class MessagesController < ActionController::Base

  def index
    puts params["Body"]
    # @gratitude = Gratitude.create({message: params["Body"], message_date: Date.now})
    @test_gratitude_1 = Gratitude.create({message: "test message", message_date: Date.now})
    @test_gratitude_2 = Gratitude.create({message: "testy", message_date: "2016-03-09"})
    @user = User.first
    @user.gratitudes.push(@gratitude)
    @user.gratitudes.push(@test_gratitude_1)
    @user.gratitudes.push(@test_gratitude_2)
    @user.save
  end


end