class AffirmationController < ApplicationController

  def daily
    @affirmation = Affirmation.limit(1).order("RANDOM()")
    render json: @affirmation
  end

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
