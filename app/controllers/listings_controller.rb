class ListingsController < ApplicationController 
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to @listing
    else
      flash[:alert] = @listing.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def search
    @listings = Listing.search(params)
  end

  def index
  end

  def mylistings
    @listings = Listing.where(user: current_user)
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :city, :state, :zipcode, :category_id, :subcategory_id)
  end
end