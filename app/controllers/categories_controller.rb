class CategoriesController < ApplicationController 
  def index
    @categories = Category.all
    @household = @categories[2]
    @food = @categories[3]
    @services = @categories[4]
    @electronics = @categories[5]
    @collectibles = @categories[6]
    @events = @categories[7]
  end 

  def show
  end
  
end