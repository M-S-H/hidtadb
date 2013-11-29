class VehiclesController < ApplicationController
	before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

	# GET /vehicles
	# GET /vehicles.json
	#def index
	#  @vehicles = Vehicle.all
	#end
	
	def index
	 @search = Vehicle.search do
			fulltext params[:search]
		 end
		@vehicles = @search.results
	end

	# GET /vehicles/1
	# GET /vehicles/1.json
	def show
		create_audit __method__, 'vehicle', @vehicle.id
	end

	# GET /vehicles/new
	def new
		@vehicle = Vehicle.new
	end

	# GET /vehicles/1/edit
	def edit
	end

	# POST /vehicles
	# POST /vehicles.json
	def create
		@vehicle = Vehicle.new(vehicle_params)

		respond_to do |format|
			if @vehicle.save
				create_audit __method__, 'vehicle', @vehicle.id
				format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
				format.json { render action: 'show', status: :created, location: @vehicle }
			else
				format.html { render action: 'new' }
				format.json { render json: @vehicle.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /vehicles/1
	# PATCH/PUT /vehicles/1.json
	def update
		respond_to do |format|
			if @vehicle.update(vehicle_params)
				create_audit __method__, 'vehicle', @vehicle.id
				format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @vehicle.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /vehicles/1
	# DELETE /vehicles/1.json
	def destroy
		create_audit __method__, 'vehicle', @vehicle.id
		@vehicle.destroy
		respond_to do |format|
			format.html { redirect_to vehicles_url }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_vehicle
			@vehicle = Vehicle.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def vehicle_params
			params.require(:vehicle).permit(:make, :model, :year, :plate, :state, :color, :owner, :siezure_report_id, :subject_id)
		end
end
