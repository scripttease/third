require 'rails_helper'

RSpec.describe User, type: :model do
  it 'requires an email' do
    user = User.new
    expect(user).not_to be_valid
    user.email = 'email@email.com'
    expect(user).to be_valid
  end
end
