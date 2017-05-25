jQuery(document).on 'turbolinks:load', ->
  chats = $('#chats')
  if chats.length > 0
    App.global_chat = App.cable.subscriptions.create {
      channel: "DebtsChannel"
      debt_id: chats.data('debt-id')
    },
    connected: ->
    disconnected: ->
    received: (data) ->
      chats.append data['chat']
    send_chat: (chat, debt_id) ->
      @perform 'send_chat', chat: chat, debt_id: debt_id
  $('#new_chat').submit (e) ->
    $this = $(this)
    textarea = $this.find('#chat_content')
    if $.trim(textarea.val()).length > 1
      App.global_chat.send_chat textarea.val(),
      chats.data('debt-id')
      textarea.val('')
    e.preventDefault()
    return false
