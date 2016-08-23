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
  has_many :moderators, class_name: "User", through: :event_roles, source: :user

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
