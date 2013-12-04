class ListItemsController < ApplicationController
  def index
    @items = ListItem.where('list_id = ?', params[:id])  
  end
  
  def create
    @items = ListItem.new(param)
    @items.list_id = params[:id]
    if @items.save
      redirect_to(:back)
    end
  end
  
  private
    
    def param
      params.require(:list_item).permit(:food_id, :quantity, :type)
    end
end