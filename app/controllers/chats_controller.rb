class ChatsController < ApplicationController
  def create
    @chatable = find_chatable
    @chat = @chatable.chats.build(chat_params)
    @chat.save
  end

  private
  def find_chatable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
  end

  def chat_params
    params.require(:chat).permit(:message, :status, :chatable_id, :chatable_type)
  end
end
