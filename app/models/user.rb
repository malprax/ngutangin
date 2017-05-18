class User < ApplicationRecord
  # :lockable, :timeoutable and :omniauthable
  scope :not_friends, ->(user) { where.not(id: (user.inverse_friends + [user] + user.friends).map(&:id) ) }
  scope :all_friends, ->(user) { where(id: (user.inverse_friends + user.friends).map(&:id) ) }

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  has_many :utang, class_name: 'Debt', foreign_key: 'kreditur_id'
  has_many :piutang, class_name: 'Debt', foreign_key: 'debitur_id'

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

  def friends_ids user
    ids = user.friends.pluck(:id)
    ids << user.inverse_friends.pluck(:id)
    ids << user.id
    return ids
  end

end
