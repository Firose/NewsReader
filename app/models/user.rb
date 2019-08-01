class User < ApplicationRecord
	ratyrate_rater
  has_secure_password

  validates :email, presence: true, uniqueness: true

  has_many :rating
end
