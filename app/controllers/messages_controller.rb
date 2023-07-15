class MessagesController < ApplicationController
  before_action :require_user
  def create
    message=current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast "channel_channel",{
        foo: message.body
      }


    end
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
