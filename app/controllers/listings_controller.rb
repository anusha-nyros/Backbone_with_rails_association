class ListingsController < ApplicationController
  respond_to :json, :html

  def index
    @listings =  Listing.all
    respond_to do |format|
        format.html
	format.json { render json: @listings }
    end
  end

  def new
    @listing = Listing.new
    respond_to do |format|
        format.html
	format.json { render json: @listing }
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def show
    @listing = Listing.find(params[:id])
    respond_to do |format|
        format.html
	format.json { render json: @listing }
    end
  end

  def create
    @listing = Listing.new(params[:listing])
    @listing.save 
    respond_with @listing

  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update_attributes(params[:listing]) 
    respond_with @listing
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    respond_to do |format|
        format.html
      format.json { head :no_content }
    end
 end
end
