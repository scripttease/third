require 'rails_helper'

RSpec.describe RecommendationsController, type: :controller do

  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it 'records the recommendation' do
      expect(Recommendation.count).to be 0
      post :create, params: { recommendation: { recipient_email: 'a@b.com' } }
      expect(Recommendation.count).to be 1
    end

    it 'associates the current user with the recommendation' do
      current_user = User.create(email: 'me@site.com') # TODO: Log in user
      post :create, params: { recommendation: { recipient_email: 'a@b.com' } }
      recommendation = Recommendation.last
      expect(recommendation.user).to eq current_user
    end

    it 'redirects to home' do
      post :create, params: { recommendation: { recipient_email: 'a@b.com' } }
      expect(response).to redirect_to '/'
    end

    it 'is unsuccessful if no recipient_email given' do
      post :create, params: { recommendation: { recipient_email: '' } }
      expect(response).to have_http_status(:bad_request)
      expect(Recommendation.count).to be 0
    end
      
    it 'sends email to recipient_email' # TODO
  end

end
