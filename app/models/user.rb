class User < ApplicationRecord
  has_many :recommendations
  validates :email, presence: true
end
