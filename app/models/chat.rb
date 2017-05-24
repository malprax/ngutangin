class Chat < ApplicationRecord
  belongs_to :sender, class_name: "User", foreign_key: "user_id"
  belongs_to :reply_from, class_name: 'Chat', foreign_key: 'chat_id'
  belongs_to :chatable, polymorphic: true #, optional: true
end
