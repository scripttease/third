class RecommendationsController < ApplicationController
  def new
    @recommendation = Recommendation.new
  end

  def create
    @recommendation = Recommendation.new(recommendation_params)
    @recommendation.user = current_user
    if @recommendation.save
      send_recommendation_email(@recommendation.recipient_email)
      redirect_to '/', notice: 'Thank you for your recommendation'
    else
      render :new, status: 400
    end
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:recipient_email)
  end

  # TODO: Send email to recipient
  def send_recommendation_email(email)
  end

  # TODO: Get real logged in user from authenication
  def current_user
    User.first || User.create(email: "pretend@user.com") 
  end
end
