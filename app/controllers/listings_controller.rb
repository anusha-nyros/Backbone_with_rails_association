class ListingsController < ApplicationController

 #before_filter :authenticate_user!
  respond_to :json

    def index
         @listings = Listing.paginate(:page => params[:page], :per_page => 5).order("#{params[:sort]} #{params[:order]} ")
       respond_to do |format|
          format.html
          format.json { render json: {listings: @listings.to_json(:include => [:features, :contacts]), :current_page => params[:page].to_i, 
                                 :perPage => 5, :total_pages => @listings.total_entries, hash: @hash }} 
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
    params[:listing][:feature_ids] = params[:listing][:feature_ids].split(',')
      features = params[:listing][:feature_ids].collect { |i| Feature.find(i) }
      @listing.features = features
     @listing.user = current_user
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
        format.html
      format.json { head :no_content }
    end
 end
end
