class ChatsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chats_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message (data)
  	ActionCable.server.broadcast "chats_channel", message: data['message'], name: current_user

    # ActionCable.server.broadcast "chats_channel", message: ApplicationController.render(partial: 'messages/message',
    #                              locals: { message: data['message'], username: current_user })
  end
end
