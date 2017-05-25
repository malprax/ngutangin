class DebtsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "blogs_#{params['debt_id']}_channel"
  end

  def unsubscribed
    #code
  end

  def send_comment(data)
    current_user.debts.create!(message: data['chat'], chat_id: data['chat_id'])
  end
end
