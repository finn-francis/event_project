class User < ActiveRecord::Base
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile

  has_many :events, foreign_key: :organiser_id, inverse_of: :organiser

  has_many :attendances, foreign_key: :user_id
  has_many :attending, class_name: 'Event', through: :attendances, source: :event

  has_many :invites, class_name: 'Invite', foreign_key: 'inviter_id'
  has_many :invited, class_name: 'User', through: :invites

  has_many :invited_to, class_name: 'Invite', foreign_key: 'invited_id'
  has_many :invited, class_name: 'User', through: :invited_to

  validates :email, presence: true
  validates :password, presence: true
  validates :password, presence: true

  after_create :create_profile

  private

  def create_profile
    Profile.create user: self
  end

end
