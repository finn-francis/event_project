class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates :user_id, presence: true
  validates :event_id, presence: true
  validates :body, presence: true, length: { minimum: 1 }

  scope :sorted, proc { order(:created_at) }
end
