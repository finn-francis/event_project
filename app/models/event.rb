class Event < ActiveRecord::Base
  belongs_to :organiser, class_name: 'User', inverse_of: :events

  has_many :invites, foreign_key: :event_id
  has_many :invited, class_name: 'User', through: :invites
  has_many :attendances
  has_many :attending, class_name: 'User', through: :attendances, source: :attending
  has_many :comments
  has_many :event_tags
  has_many :tags, through: :event_tags
  has_many :event_roles
  has_many :users_with_roles, class_name: "User", through: :event_roles, source: :user

  accepts_nested_attributes_for :comments

  validates :organiser_id, presence: :true
  validates :title, presence: :true
  validates :description, presence: :true
  validates :country, presence: :true
  validates :city, presence: :true
  validates :postcode, presence: :true

  geocoded_by :geocoder_input
  after_validation :geocode
  after_create :create_attendance
  after_create :set_mod

  scope :sorted, proc { order(created_at: :desc).uniq }

  def location
    address = [self.country, self.city].join(" ")
    return address == " " ? false : address
  end

  def moderators
    moderator = Role.find_or_create_by(name: "moderator")
    moderators = find_user_roles(moderator)
  end

  def banned_users
    banned = Role.find_or_create_by(name: "banned")
    banned_users = find_user_roles(banned)
  end

  def find_user_roles(role)
    list = []
    self.users_with_roles.find_each do |user|
      if user.event_roles.where(event: self, role: role).length > 0
        list << user
      end
    end
    list
  end

  def ban_user(user)
    role = Role.find_or_create_by name: 'banned'
    EventRole.create(
      event: self,
      user: user,
      role: role
    )
  end

  private

  def geocoder_input
    [self.country, self.city, self.postcode].join(", ")
  end

  def create_attendance
    self.attendances.create(user_id: self.organiser.id, event_id: self.id)
  end

  def set_mod
    role = Role.find_or_create_by name: 'moderator'
    EventRole.create(
      event: self,
      user: self.organiser,
      role: role
    )
  end

end
