class MessagesController < ApplicationController

  def index
    puts 'Is this loggin' + params["Body"]
    # @gratitude = Gratitude.create({message: params["Body"], message_date: "2016-03-03"})
    @test_gratitude_2 = Gratitude.create({message: "day 3", message_date: "2016-03-15"})
    @user = User.first
    @user.gratitudes.push(@test_gratitude_2)
    @user.save

    redirect_to "/"
  end


end