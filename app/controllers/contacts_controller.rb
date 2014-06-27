class ContactsController < ApplicationController
   respond_to :json

  def index
    @contacts = Contact.all
    respond_to do |format|
      format.json  { render :json => @contacts}
    end
  end

  def new
    @contact = Contact.new
    respond_to do |format|
	format.json { render json: @contact }
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def show
    @contact = Contact.find(params[:id])
    respond_to do |format|
	format.json { render json: @contact }
    end
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.listing_id = params[:contact][:listing_id]
    @contact.save 
    respond_with @contact

  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update_attributes(params[:contact]) 
    respond_with @contact
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
 end
end
