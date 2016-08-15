class User < ActiveRecord::Base
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events, foreign_key: :organiser_id

  validates :email, presence: true
  validates :password, presence: true
  validates :password, presence: true
end
