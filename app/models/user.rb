class User < ApplicationRecord
  has_many :registrations, dependent: :destroy
   has_secure_password
  validates :name, presence: true 
  validates :email, presence: true, uniqueness: {case_sensitive: false}
end
