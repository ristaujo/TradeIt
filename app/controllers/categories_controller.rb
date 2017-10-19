class CategoriesController < ApplicationController 
  def index
    @categories = Category.all
    @household = @categories[0]
    @food = @categories[1]
    @services = @categories[2]
    @electronics = @categories[3]
    @collectibles = @categories[4]
    @events = @categories[5]
  end 

  def show
    @listings = Listing.where(category_id: params[:id])
  end
  
end