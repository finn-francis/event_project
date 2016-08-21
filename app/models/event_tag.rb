class EventTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :event

  validates :event_id, presence: true
  validates :tag_id, presence: true
  validates :user_id, uniqueness: { scope: :event_id }
end
