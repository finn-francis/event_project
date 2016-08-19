class Profile < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true, uniqueness: true

  geocoded_by :geocoder_input
  after_validation :update_location

  def name
    [self.first_name, self.last_name].join ' '
  end

  def location
    address = [self.country, self.city].join ' '
    return address == ' ' ? false : address
  end

  private

  def geocoder_input
    [self.country, self.city].join ', '
  end

  def update_location
    if self.country && self.city
      geocode
    end
  end

end
