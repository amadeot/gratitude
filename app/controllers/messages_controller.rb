class MessagesController < ApplicationController

  def create
    puts 'Is this loggin' + params["Body"]
    # @gratitude = Gratitude.create({message: params["Body"], message_date: "2016-03-03"})
    @test_gratitude_2 = Gratitude.create({message: "testy", message_date: "2016-03-09"})
    @user = User.first
    @user.gratitudes.push(@test_gratitude_2)
    @user.save
  end


end