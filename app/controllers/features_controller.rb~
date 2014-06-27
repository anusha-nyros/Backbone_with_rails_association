class FeaturesController < ApplicationController
    respond_to :json
	def index
		@features = Feature.all
		respond_to do |format|
			format.html
			format.json{ render json: @features }
		end
	end
	def new
		@feature = Feature.find(params[:id])
		respond_to do |format|
			format.html
			format.json{ render json: @feature }
		end
	end
	def edit
		@feature = Feature.find(params[:id])
	end
	def create
		@feature = Feature.new(params[:feature])
    		@feature.save 
    		respond_with @feature

	end
	def update
		@feature = Feature.find(params[:id])
		@feature.update_attributes(params[:feature]) 
		respond_with @feature

	end
	def destroy
		 @feature = Feature.find(params[:id])
		 @feature.destroy
		 respond_to do |format|
		      format.html
		      format.json { head :no_content }
    		 end
	end
end
