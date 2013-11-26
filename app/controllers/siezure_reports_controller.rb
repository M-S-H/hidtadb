class SiezureReportsController < ApplicationController

	before_action :set_siezure_report, only: [:show, :edit, :update, :destroy]

	# GET /siezure_reports
	# GET /siezure_reports.json
	#def index
	#  @siezure_reports = SiezureReport.all
	#end
	
	def index
		@search = SiezureReport.search do
			fulltext params[:search]
		 end
		@siezure_reports = @search.results
	end

	# GET /siezure_reports/1
	# GET /siezure_reports/1.json
	def show
		create_audit __method__, 'siezure report', @siezure_report.id
	end

	# GET /siezure_reports/new
	def new
		@siezure_report = SiezureReport.new
	end

	# GET /siezure_reports/1/edit
	def edit
	end

	# POST /siezure_reports
	# POST /siezure_reports.json
	def create
		@siezure_report = SiezureReport.new(siezure_report_params)
		subjects = Array.new
		vehicles = Array.new


		#Create Location
		l = Location.create location_params
		@siezure_report.location = l

		#Create Drug Siezures
		if params[:drugs]
			params[:drugs].keys.each do |k|
				@siezure_report.drugs.new params.require(:drugs).require(k).permit(:type_of_drug, :amount, :purchase_price, :currency)
			end
		end

		#Create Weapon Siezures
		if params[:weapons]
			params[:weapons].keys.each do |k|
				@siezure_report.weapons.new params.require(:weapons).require(k).permit(:weapon_type, :caliber, :sn)
			end
		end

		#Create Subjects
		if params[:subjects]
			params[:subjects].keys.each do |k|
				s = @siezure_report.subjects.new params.require(:subjects).require(k).permit(:name, :dob, :ssn, :oln, :gender, :address, :city, :state, :zip, :passanger, :misc, :citizenship, :siezure_report_id)
				subjects << s
			end
		end

		#Create Vehicles
		if params[:vehicles]
			params[:vehicles].keys.each do |k|
				v = @siezure_report.vehicles.new params.require(:vehicles).require(k).permit(:make, :model, :year, :plate, :state, :color, :owner, :siezure_report_id, :subject_id)
				vehicles << v
			end
		end

		respond_to do |format|
			if @siezure_report.save
				subjects.each {|s| create_audit __method__, 'subject', s.id}
				vehicles.each {|v| create_audit __method__, 'vehicle', v.id}
				create_audit __method__, 'siezure report', @siezure_report.id
				format.html { redirect_to @siezure_report, notice: 'Siezure report was successfully created.' }
				format.json { render action: 'show', status: :created, location: @siezure_report }
			else
				format.html { render action: 'new' }
				format.json { render json: @siezure_report.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /siezure_reports/1
	# PATCH/PUT /siezure_reports/1.json
	def update
		respond_to do |format|
			if @siezure_report.update(siezure_report_params)
				create_audit __method__, 'siezure report', @siezure_report.id
				format.html { redirect_to @siezure_report, notice: 'Siezure report was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @siezure_report.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /siezure_reports/1
	# DELETE /siezure_reports/1.json
	def destroy
		create_audit __method__, 'siezure report', @siezure_report.id
		@siezure_report.destroy
		respond_to do |format|
			format.html { redirect_to siezure_reports_url }
			format.json { head :no_content }
		end
	end


	def add_fields
		@number = params[:num]
		@type = params[:type]

		if @type == "drug"
			render partial: 'drug'
		elsif @type == "weapon"
			render partial: 'weapon'
		elsif @type == "subject"
			render partial: 'add_subject'
		elsif @type == "vehicle"
			render partial: 'add_vehicle'
		else
			render string: 'blank'
		end
			
	end


	private
		# Use callbacks to share common setup or constraints between actions.
		def set_siezure_report
			@siezure_report = SiezureReport.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def siezure_report_params
			params.require(:siezure_report).permit(:taskforce, :agency, :casenum, :cjis, :initiative, :siezuredate, :siezuretime, :siezuretype, :hheop, :road, :mile_marker, :direction, :address, :city, :country, :state, :zip, :narrative, :analytical, :concealment_method, :false_compartment, :compartment_location, :cargo_state_type, :k9used, :lab_stash_house, :poc, :pocphone)
		end
		
		def location_params
			params.require(:location).permit(:road, :mile_marker, :direction, :address, :city, :county, :state, :zip)
		end
end
