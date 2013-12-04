class MealsController < ApplicationController
  before_action :signed_in_user

  def index
    if params[:date].present? 
       date = params[:date]
    else
       date = Time.now.strftime("%F")
    end
    @user = User.find(current_user.id) 
    @meals = @user.meals.where('date = ? ', date ).group("id")
    @breakfasts = @meals.where(meal_tag: "breakfast").group("meal_tag")
    @lunches = @meals.where(meal_tag: "lunch")
    @dinners = @meals.where(meal_tag: "dinner") 
    @date =  Date.parse(date)
    @calories = @user.goal.calories
  end

  def meal_type
    @meals = @user.meals.find_by_meal_tag(params[:meal])
  end

  def signed_in_user 
    redirect_to food_search_url unless signed_in?
  end
end
