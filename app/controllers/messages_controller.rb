class MessagesController < ApplicationController
  def create
    @message = Message.new message_params

    if @message.save
      FormMailer.new_contact(@message).deliver_now
      @message = Message.new
    end
  end

  private

    def message_params
      params.require(:message).permit(:email, :name, :message)
    end
end
