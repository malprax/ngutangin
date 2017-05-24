# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string           default(""), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  firstname              :string
#  lastname               :string
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  provider               :string
#  uid                    :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#

class User < ApplicationRecord
  # :lockable, :timeoutable and :omniauthable
  scope :not_friends, ->(user) { where.not(id: (user.inverse_friends + [user] + user.friends).map(&:id) ) }
  scope :all_friends, ->(user) { where(id: (user.inverse_friends + user.friends).map(&:id) ) }
  scope :utang_piutang, ->(user) { where()}

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  has_many :utangs, class_name: 'Debt', foreign_key: 'kreditur_id' # penerima pinjaman
  has_many :piutangs, class_name: 'Debt', foreign_key: 'debitur_id' # pemberi pinjaman

  # has_many :chats
   has_many :chats, as: :chatable

  has_many :friendships
  has_many :friends, through: :friendships

  has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id"
  has_many :inverse_friends, through: :inverse_friendships, source: :user

  has_many :friend_requests



  def self.from_omniauth(auth)
   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
     user.email = auth.info.email
     user.password = Devise.friendly_token[0,20]
     user.firstname = auth.info.first_name   # assuming the user model has a name
     user.lastname = auth.info.last_name   # assuming the user model has a name
     # user.image = auth.info.image # assuming the user model has an image
     # If you are using confirmable and the provider(s) you use validate emails,
     # uncomment the line below to skip the confirmation emails.
     user.skip_confirmation!
   end
  end

  def self.from_ajakan(data)
   where(email: data.email).first_or_create do |user|
     user.email = data.email
     user.password = Devise.friendly_token[0,20]
     user.firstname = data.firstname
     user.lastname = data.lastname
     user.username = data.email
     user.skip_confirmation!
   end
  end

  def friends_ids user
    ids = user.friends.pluck(:id)
    ids << user.inverse_friends.pluck(:id)
    ids << user.id
    return ids
  end

end
