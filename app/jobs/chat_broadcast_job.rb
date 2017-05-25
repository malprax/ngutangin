class ChatBroadcastJob < ApplicationJob
  queue_as :default

  def perform(chat)
    ActionCable.server.broadcast "debts_#{chat.debt.id}_channel", chat: render_chat(chat)
  end

  private
  def render_chat(chat)
    ChatsController.render partial: 'chats/chat', locals: {chat: chat}
  end
end
