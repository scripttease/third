require 'rails_helper'

RSpec.describe Recommendation, type: :model do
  it 'requires a user' do
    recommendation = Recommendation.new(recipient_email: 'test@email.com')
    expect(recommendation).not_to be_valid
    recommendation.user = User.new
    expect(recommendation).to be_valid
  end

  it 'requires a email' do
    user = User.new
    recommendation = Recommendation.new(user: user)
    expect(recommendation).not_to be_valid
    recommendation.recipient_email = 'email@gmail.com'
    expect(recommendation).to be_valid
  end
end
