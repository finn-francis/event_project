class Invite < ActiveRecord::Base
  belongs_to :event

  belongs_to :invited, class_name: 'User'
  belongs_to :inviter, class_name: 'User'

  validates :invited_id, presence: true
  validates :inviter_id, presence: true
  validates :event_id, presence: true

  after_save :create_attendance

  private

  def create_attendance
    if self.accepted
      self.invited.attendances.create event: self.event
    end
  end

end
