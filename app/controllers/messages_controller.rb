class MessagesController < ApplicationController
  def create
    @message = Message.new message_params

    if @message.save
      @message = Message.new
    end
  end

  private

    def message_params
      params.require(:message).permit(:email, :name, :message)
    end
end
