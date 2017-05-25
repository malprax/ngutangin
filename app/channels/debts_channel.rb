class DebtsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "debts_#{params['debt_id']}_channel"
  end

  def unsubscribed
    #code
  end

  def send_chat(data)
    current_user.chats.create!(message: data['chat'], debt_id: data['debt_id'])
  end
end
