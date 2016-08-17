class Event < ActiveRecord::Base
  belongs_to :organiser, class_name: 'User', inverse_of: :events

  has_many :invites, foreign_key: :event_id
  has_many :invited, class_name: 'User', through: :invites

  validates :organiser_id, presence: :true
  validates :title, presence: :true
  validates :description, presence: :true
  validates :country, presence: :true
  validates :city, presence: :true
  validates :postcode, presence: :true

  geocoded_by :geocoder_input
  after_validation :geocode

  private

  def geocoder_input
    thing = [self.country, self.city, self.postcode].join(", ")
  end
end
