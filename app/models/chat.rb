# == Schema Information
#
# Table name: chats
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  debt_id    :integer
#  message    :text
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_chats_on_debt_id  (debt_id)
#  index_chats_on_user_id  (user_id)
#

class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :debt

  # belongs_to :sender, class_name: "User", foreign_key: "user_id"
  # belongs_to :reply_from, class_name: 'Chat', foreign_key: 'chat_id'
  # belongs_to :chatable, polymorphic: true #, optional: true
  validates :message, presence: true

  after_create_commit {ChatBroadcastJob.perform_later(self)}
end
