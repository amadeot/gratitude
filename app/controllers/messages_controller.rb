class MessagesController < ApplicationController

  def index
    puts 'LOG ANYTHING'
    puts 'Is this loggin' + params["Body"]
    # @gratitude = Gratitude.create({message: params["Body"], message_date: "2016-03-03"})
    @test_gratitude_2 = Gratitude.create({message: "put back authenticity token", message_date: "2016-03-15"})
    @user = User.first
    @user.gratitudes.push(@test_gratitude_2)
    @user.save

    render xml: "<Response/>"

    # SMSLogger.log_text_message from_number, message_body

    #test cmment

    redirect_to "/"
  end


end