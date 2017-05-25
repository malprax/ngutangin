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

class Debt < ApplicationRecord
  belongs_to :kreditur, class_name: 'User', foreign_key: 'kreditur_id' # penerima pinjaman
  belongs_to :debitur, class_name: 'User', foreign_key: 'debitur_id' # pemberi pinjaman
  has_many :entries
  # has_many :chats, as: :chatable
  has_many :chats, dependent: :destroy

  def jenis current_user
    if self.kreditur.id == current_user.id
      return 'Utang'
    elsif self.debitur.id == current_user.id
      return 'Piutang'
    end
  end
end
