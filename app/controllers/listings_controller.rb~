class ListingsController < ApplicationController
  respond_to :json

  def index
    @listings = Listing.all
    @listings.each do |listing|
	@contacts = listing.contacts.all
    end
    respond_to do |format|
      format.html
      format.json  { render :json => @listings.to_json(:include => [:features, :contacts])}
    end
  end

  def new
    @listing = Listing.new
    respond_to do |format|
        format.html { render json: @listing }
	format.json { render json: @listing }
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def show
    @listing = Listing.find(params[:id])
    respond_to do |format|
	format.json { render json: @listing }
    end
  end

  def create
    @listing = Listing.new(params[:listing])
    params[:listing][:feature_ids] = params[:listing][:feature_ids].split(',')
      features = params[:listing][:feature_ids].collect { |i| Feature.find(i) }
      @listing.features = features
    @listing.save 
    respond_with @listing

  end

  def update
    @listing = Listing.find(params[:id])
    params[:listing][:feature_ids] = params[:listing][:feature_ids].split(',')
      features = params[:listing][:feature_ids].collect { |i| Feature.find(i) }
      @listing.features = features
    @listing.update_attributes(params[:listing]) 
    respond_with @listing
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
 end
end
