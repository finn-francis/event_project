class Invite < ActiveRecord::Base
  belongs_to :event

  belongs_to :inviter, class_name: 'User', inverse_of: :invites
  belongs_to :invited, class_name: 'User', inverse_of: :invited_to

  validates :invited_id, presence: true
  validates :inviter_id, presence: true
  validates :event_id, presence: true
  validates :event_id, uniqueness: { scope: [:invited_id, :inviter_id] }

  after_save :create_attendance

  scope :pending_invites, proc { where(accepted: nil) }

  private

  def create_attendance
    if self.accepted
      self.invited.attendances.create event: self.event
    end
  end

end
