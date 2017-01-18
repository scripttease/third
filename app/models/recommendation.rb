class Recommendation < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :recipient_email, presence: true
end
