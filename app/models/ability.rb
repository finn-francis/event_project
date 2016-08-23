class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :destroy, Comment do |comment|
        user.moderator?(comment.event)
      end
    end
  end
end
