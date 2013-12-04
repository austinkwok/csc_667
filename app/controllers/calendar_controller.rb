class CalendarController < ApplicationController
<<<<<<< HEAD
  
  def show
    @user = current_user
    @meals = @user.meals.where("meal_tag = ?", params[:meal_tag])
    render :json => @meals.to_json(:include  => :food)
=======

  def show 
    @meals = Meal.where("strftime('%Y', date) = ? AND strftime('%m', date) = ?", params[:year], params[:month])
   render :json => @meals.to_json(:include  => :food)
  end

  def index
>>>>>>> d185f359c32dfe61d144ea4e8c062f6e00a6914c
  end

end
