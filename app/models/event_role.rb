class EventRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  belongs_to :role

  validates :user_id, presence: true
  validates :event_id, presence: true
  validates :role_id, presence: true
  validates :user_id, uniqueness: { scope: [:event_id, :role_id] }
end
