class User < ActiveRecord::Base
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
    :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

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
