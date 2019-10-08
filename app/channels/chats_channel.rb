class ChatsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chats_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message (data)
  	ActionCable.server.broadcast "chats_channel", message: data['message']
  end
end
