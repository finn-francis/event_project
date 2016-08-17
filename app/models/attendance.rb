class Attendance < ActiveRecord::Base
  belongs_to :event
  belongs_to :attending, class_name: 'User', foreign_key: :user_id

  validates :user_id, presence: true
  validates :event_id, presence: true
end
