class AffirmationController < ApplicationController
  def index
    @affirmations = Affirmation.all 
    render json: @affirmations
  end

  def create
    @affirmation = Affirmation.create(affirmation_params)
    render json: @affirmation
  end

  private
  def affirmation_params
    params.permit(:phrase)
  end
end
