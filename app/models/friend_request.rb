class FriendRequest < ActiveRecord::Base
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  after_save :update_accepted

  scope :filtered, proc { where(accepted: nil) }

  private

  def update_accepted
    if self.accepted
      self.sender.friendships.create( friend_id: self.receiver.id)
      self.receiver.friendships.create( friend_id: self.sender.id)
    end
  end

end
