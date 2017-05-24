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

require 'test_helper'

class FriendRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
