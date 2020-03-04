class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save # permet de verifier si save est true, donc si la methode review_paramsest respecté
      redirect_to restaurant_path(@restaurant) # si respecté on renvoi vers la page du restau
    else
      render :new # si pas respecté on renvoi les messages derreur de la page new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
