class User < ActiveRecord::Base
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events, foreign_key: :organiser_id

  has_many :invites, class_name: 'Invite', foreign_key: 'inviter_id'
  has_many :invited, class_name: 'User', through: :invites

  has_many :invited_to, class_name: 'Invite', foreign_key: 'invited_id'
  has_many :invited, class_name: 'User', through: :invited_to

  validates :email, presence: true
  validates :password, presence: true
  validates :password, presence: true
end
