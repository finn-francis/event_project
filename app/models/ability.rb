class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :destroy, Comment do |comment|
        comment.event.moderators.include? user
      end
      cannot :read, Event do |event|
        event.banned_users.include? user
      end
    end
  end
end
