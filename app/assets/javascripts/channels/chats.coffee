App.chats = App.cable.subscriptions.create "ChatsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # alert(data['message'])
    $('#messages').append "<p>"+data['message']+"</p>"

  send_message: (message) ->
    @perform 'send_message', message: message

 $(document).on 'keypress', '[data-behavior~=send_chat]', (event) ->
  if event.keyCode is 13 # return = send
    App.chats.send_message event.target.value
    event.target.value = ''
    event.preventDefault()
