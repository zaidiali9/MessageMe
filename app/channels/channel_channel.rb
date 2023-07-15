class ChannelChannel < ApplicationCable::Channel
  def subscribed
    stream_from "channel_channel"
  end

  def unsubscribed
    #Any cleanup needed when channel is unsubscribed
  end

  def chatroom
  end
end
