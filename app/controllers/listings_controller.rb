class ListingsController < ApplicationController
<<<<<<< HEAD
  respond_to :json

    def index
         @listings = Listing.paginate(:page => params[:page], :per_page => 5).order("#{params[:sort]} #{params[:order]} ")

       respond_to do |format|
          format.html
          format.json { render json: {listings: @listings.to_json(:include => [:features, :contacts]), :current_page => params[:page].to_i, 
                                 :perPage => 5, :total_pages => @listings.total_entries, hash: @hash }} 
       end
    end

=======
<<<<<<< HEAD
  respond_to :json

  def index
    @listings = Listing.all
    @listings.each do |listing|
	@contacts = listing.contacts.all
    end
    respond_to do |format|
      format.html
      format.json  { render :json => @listings.to_json(:include => [:features, :contacts])}
=======
  respond_to :json, :html

  def index
    @listings =  Listing.all
    respond_to do |format|
        format.html
	format.json { render json: @listings }
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
    end
  end
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49

  def new
    @listing = Listing.new
    respond_to do |format|
<<<<<<< HEAD
        format.html { render json: @listing }
=======
<<<<<<< HEAD
        format.html { render json: @listing }
=======
        format.html
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
	format.json { render json: @listing }
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def show
    @listing = Listing.find(params[:id])
    respond_to do |format|
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
        format.html
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
	format.json { render json: @listing }
    end
  end

  def create
    @listing = Listing.new(params[:listing])
<<<<<<< HEAD
    params[:listing][:feature_ids] = params[:listing][:feature_ids].split(',')
      features = params[:listing][:feature_ids].collect { |i| Feature.find(i) }
      @listing.features = features
=======
<<<<<<< HEAD
    params[:listing][:feature_ids] = params[:listing][:feature_ids].split(',')
      features = params[:listing][:feature_ids].collect { |i| Feature.find(i) }
      @listing.features = features
=======
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
    @listing.save 
    respond_with @listing

  end

  def update
    @listing = Listing.find(params[:id])
<<<<<<< HEAD
    params[:listing][:feature_ids] = params[:listing][:feature_ids].split(',')
      features = params[:listing][:feature_ids].collect { |i| Feature.find(i) }
      @listing.features = features
=======
<<<<<<< HEAD
    params[:listing][:feature_ids] = params[:listing][:feature_ids].split(',')
      features = params[:listing][:feature_ids].collect { |i| Feature.find(i) }
      @listing.features = features
=======
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
    @listing.update_attributes(params[:listing]) 
    respond_with @listing
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    respond_to do |format|
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
        format.html
>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
      format.json { head :no_content }
    end
 end
end
