class MessagesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    Rails.logger.info 'LOG ANYTHING'
    puts 'Is this loggin' + params["Body"]
    # @gratitude = Gratitude.create({message: params["Body"], message_date: "2016-03-03"})
    @test_gratitude_2 = Gratitude.create({message: params["Body"], message_date: Date.today})
    @user = User.first
    @user.gratitudes.push(@test_gratitude_2)
    @user.save

    head :ok
  end


end