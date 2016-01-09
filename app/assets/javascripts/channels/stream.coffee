App.stream = App.cable.subscriptions.create "StreamChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $("#messages").append data.message
    # Called when there's incoming data on the websocket for this channel

  speak: (message) ->
    @perform 'speak', message: message

$(document).on "submit", "#speaker", (event) ->
  App.stream.speak $(event.target).find("#message").val()
  event.preventDefault()
  event.target.reset()
