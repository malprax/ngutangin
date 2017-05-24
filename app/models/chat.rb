# == Schema Information
#
# Table name: chats
#
#  id            :integer          not null, primary key
#  chatable_id   :integer
#  chatable_type :string
#  message       :text
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Chat < ApplicationRecord
  belongs_to :sender, class_name: "User", foreign_key: "user_id"
  # belongs_to :reply_from, class_name: 'Chat', foreign_key: 'chat_id'
  belongs_to :chatable, polymorphic: true #, optional: true
  validates :message, presence: true
end
