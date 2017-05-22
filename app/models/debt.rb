class Debt < ApplicationRecord
  belongs_to :kreditur, class_name: 'User', foreign_key: 'kreditur_id'
  belongs_to :debitur, class_name: 'User', foreign_key: 'debitur_id'
  has_many :entries
  has_many :chats, as: :chatable
end
