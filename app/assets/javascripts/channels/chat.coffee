App.chat = App.cable.subscriptions.create 'ChatChannel',
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#chats').append '<div>`${data["message"]}`</div>'

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=speak_chats]', (e) ->
  if e.keyCode is 13
    App.chat.speak event.target.value
    e.target.value = ''
    e.preventDefault()