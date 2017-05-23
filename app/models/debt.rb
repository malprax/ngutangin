class Debt < ApplicationRecord
  belongs_to :kreditur, class_name: 'User', foreign_key: 'kreditur_id' # penerima pinjaman
  belongs_to :debitur, class_name: 'User', foreign_key: 'debitur_id' # pemberi pinjaman
  has_many :entries
  has_many :chats, as: :chatable

  def jenis current_user
    if self.kreditur.id == current_user.id
      return 'Utang'
    elsif self.debitur.id == current_user.id
      return 'Piutang'
    end
  end
end
