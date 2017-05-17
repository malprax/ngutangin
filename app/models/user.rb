class User < ApplicationRecord
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :utang, class_name: 'Debt', foreign_key: 'kreditur_id'
  has_many :piutang, class_name: 'Debt', foreign_key: 'debitur_id'

  has_many :friendships
  has_many :friends, through: :friendships

  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
end
