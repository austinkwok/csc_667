class GroceryList < ActiveRecord::Base
  has_many :ListItems
end
