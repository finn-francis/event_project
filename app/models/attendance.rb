class Attendance < ActiveRecord::Base
  belongs_to :event
  belongs_to :attending, class_name: 'User', foreign_key: :user_id, inverse_of: :attendances

  validates :user_id, presence: true
  validates :event_id, presence: true
  validates :user_id, uniqueness: { scope: :event_id }
end
