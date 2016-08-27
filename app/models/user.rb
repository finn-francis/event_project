class User < ActiveRecord::Base
  # :confirmable, :lockable, :timeoutable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
    :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  has_one :profile

  has_many :events, foreign_key: :organiser_id, inverse_of: :organiser
  has_many :attendances
  has_many :attending, class_name: 'Event', through: :attendances, source: :event
  has_many :invites, class_name: 'Invite', foreign_key: 'inviter_id', inverse_of: :inviter
  has_many :invited_to, class_name: 'Invite', foreign_key: 'invited_id', inverse_of: :invited
  has_many :invited, class_name: 'User', through: :invited_to
  has_many :friend_requests, foreign_key: :sender_id
  has_many :sent_requests, class_name: "User", through: :friend_requests, source: :receiver
  has_many :friend_requested, class_name: "FriendRequest", foreign_key: :receiver_id, inverse_of: :receiver
  has_many :received_requests, class_name: "User", through: :friend_requested, source: :sender
  has_many :friend_requester, class_name: "FriendRequest", foreign_key: :sender_id, inverse_of: :sender
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :event_roles
  has_many :comments

  validates :email, presence: true
  validates :password, presence: true
  validates :password, presence: true

  after_create :create_profile

  def admin?
    admin = Role.find_or_create_by(name: "admin")
    self.roles.include? admin
  end

  def friends
    self.friend_requested.select{ |fr| fr.accepted }.map(&:sender) + self.friend_requester.select { |fr| fr.accepted }.map(&:receiver)
  end

  def friends_with?(user)
    self.friends.include?(user)
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  private

  def create_profile
    Profile.create! user_id: self.id
  end

end
