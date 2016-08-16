class Invite < ActiveRecord::Base
  belongs_to :event

  belongs_to :invited, class_name: 'User'
  belongs_to :inviter, class_name: 'User'
end
