class FriendRequest < ActiveRecord::Base
  belongs_to :sender, class_name: "User", inverse_of: :friend_requester
  belongs_to :receiver, class_name: "User", inverse_of: :friend_requested

  validates :sender_id, presence: true
  validates :receiver_id, presence: true
  validates :sender_id, uniqueness: { scope: :receiver_id }

  scope :filtered, proc { where(accepted: nil) }
    
  # %%%TODO(finn) this could be improved?
  after_save :reload_both_users

  def reload_both_users
    if self.accepted
      self.sender.reload
      self.receiver.reload
    end
  end

end
