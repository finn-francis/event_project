class Profile < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true, uniqueness: true

  geocoded_by :geocoder_input
  after_validation :update_location

  private

  def geocoder_input
    [self.country, self.city].join(', ')
  end

  def update_location
    if self.country && self.city
      geocode
    end
  end

end
