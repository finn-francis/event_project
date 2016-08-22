class FriendRequest < ActiveRecord::Base
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates :sender_id, presence: true
  validates :receiver_id, presence: true
  validates :sender_id, uniqueness: { scope: :receiver_id }

  after_save :update_accepted

  scope :filtered, proc { where(accepted: nil) }

  private

  def update_accepted
    if self.accepted
      self.sender.friendships.create(friend_id: self.receiver.id)
    end
  end

end
