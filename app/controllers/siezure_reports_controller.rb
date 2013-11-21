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

    respond_to do |format|
      if @siezure_report.save
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
    @siezure_report.destroy
    respond_to do |format|
      format.html { redirect_to siezure_reports_url }
      format.json { head :no_content }
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
end
