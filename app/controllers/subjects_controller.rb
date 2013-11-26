class SubjectsController < ApplicationController
	before_action :set_subject, only: [:show, :edit, :update, :destroy]
	
	
	# GET /subjects
	# GET /subjects.json
	def index
	 @search = Subject.search do
			fulltext params[:search]
		 end
		@subjects = @search.results
		#@subjects = Subject.all
	end

	# GET /subjects/1
	# GET /subjects/1.json
	def show
		create_audit __method__, 'subject', @subject.id
	end

	# GET /subjects/new
	def new
		@subject = Subject.new
	end

	# GET /subjects/1/edit
	def edit
	end

	# POST /subjects
	# POST /subjects.json
	def create
		@subject = Subject.new(subject_params)

		respond_to do |format|
			if @subject.save
				create_audit __method__, 'subject', @subject.id
				format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
				format.json { render action: 'show', status: :created, location: @subject }
			else
				format.html { render action: 'new' }
				format.json { render json: @subject.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /subjects/1
	# PATCH/PUT /subjects/1.json
	def update
		respond_to do |format|
			if @subject.update(subject_params)
				create_audit __method__, 'subject', @subject.id
				format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @subject.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /subjects/1
	# DELETE /subjects/1.json
	def destroy
		create_audit __method__, 'subject', @subject.id
		@subject.destroy
		respond_to do |format|
			format.html { redirect_to subjects_url }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_subject
			@subject = Subject.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def subject_params
			params.require(:subject).permit(:name, :dob, :ssn, :oln, :gender, :address, :city, :state, :zip, :passanger, :misc, :citizenship, :siezure_report_id)
		end
end
