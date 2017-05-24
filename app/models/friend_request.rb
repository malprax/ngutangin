# == Schema Information
#
# Table name: friend_requests
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  firstname     :string
#  lastname      :string
#  email         :string
#  phone         :string
#  status        :string
#  request_token :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_friend_requests_on_user_id  (user_id)
#

class FriendRequest < ApplicationRecord
  before_create :set_status
  belongs_to :user

  private

    # Set default status as Pending before create a request
    def set_status
      self.status = 'Pending'
    end
end
