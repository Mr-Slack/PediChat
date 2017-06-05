App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']

  speak: (message) ->
    @perform 'speak', message: message

  $('#send-btn').on 'click','[data-behavior~=room_speaker]', (event) ->
    cnsole.log(event.target.value)
    App.room.speak event.target.value
    vent.target.value = ''

$ ->
  $('#send-btn').on 'click', ->
    App.room.speak $('#comment').val()
    $('#comment').val("")
