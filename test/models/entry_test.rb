# == Schema Information
#
# Table name: entries
#
#  id         :integer          not null, primary key
#  debt_id    :integer
#  date       :date
#  status     :string
#  amount     :decimal(, )
#  prove      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_entries_on_debt_id  (debt_id)
#

require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
