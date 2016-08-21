class Tag < ActiveRecord::Base
  has_many :event_tags
  has_many :events, through: :event_tags

  validates :name, presence: true, length: { minimum: 3 }
  validates :name, uniqueness: true
end
