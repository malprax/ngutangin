# == Schema Information
#
# Table name: debts
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :string
#  amount        :decimal(, )
#  due_date      :date
#  prove         :string
#  status        :string
#  warning_unit  :string
#  warning_count :integer
#  kreditur_id   :integer
#  debitur_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_debts_on_debitur_id   (debitur_id)
#  index_debts_on_kreditur_id  (kreditur_id)
#

require 'test_helper'

class DebtTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
