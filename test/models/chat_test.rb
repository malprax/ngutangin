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

require 'test_helper'

class ChatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
