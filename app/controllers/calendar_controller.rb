class CalendarController < ApplicationController
  
  def show
    @user = current_user
    @meals = @user.meals.where("meal_tag = ?", params[:meal_tag])
    render :json => @meals.to_json(:include  => :food)
  end

end
