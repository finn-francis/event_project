class Event < ActiveRecord::Base
  belongs_to :organiser, class_name: 'User'

  validates :organiser_id, presence: :true
end
