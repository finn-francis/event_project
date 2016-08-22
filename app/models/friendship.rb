class Friendship < ActiveRecord::Base
  belongs_to :friend, class_name: "User"

  validates :user_id, presence: true
  validates :friend_id, presence: true

  validates :user_id, uniqueness: { scope: :friend_id }

  after_create :set_receiver_friendship

  private

  def set_receiver_friendship
    @user = find_user(self.user_id)
    @friend = find_user(self.friend_id)

    unless @friend.friends.include?(@user)
      @friend.friendships.create(friend: @user)
    end
  end

  private

  def find_user(id)
    User.find(id)
  end

end
