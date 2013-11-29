require 'test_helper'

class SiezureReportsControllerTest < ActionController::TestCase
  setup do
    @siezure_report = siezure_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siezure_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siezure_report" do
    assert_difference('SiezureReport.count') do
      post :create, siezure_report: { address: @siezure_report.address, agency: @siezure_report.agency, analytical: @siezure_report.analytical, cargo_state_type: @siezure_report.cargo_state_type, casenum: @siezure_report.casenum, city: @siezure_report.city, cjis: @siezure_report.cjis, compartment_location: @siezure_report.compartment_location, concealment_method: @siezure_report.concealment_method, country: @siezure_report.country, direction: @siezure_report.direction, false_compartment: @siezure_report.false_compartment, hheop: @siezure_report.hheop, initiative: @siezure_report.initiative, k9used: @siezure_report.k9used, lab_stash_house: @siezure_report.lab_stash_house, mile_marker: @siezure_report.mile_marker, narrative: @siezure_report.narrative, poc: @siezure_report.poc, pocphone: @siezure_report.pocphone, road: @siezure_report.road, siezuredate: @siezure_report.siezuredate, siezuretime: @siezure_report.siezuretime, siezuretype: @siezure_report.siezuretype, state: @siezure_report.state, taskforce: @siezure_report.taskforce, zip: @siezure_report.zip }
    end

    assert_redirected_to siezure_report_path(assigns(:siezure_report))
  end

  test "should show siezure_report" do
    get :show, id: @siezure_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @siezure_report
    assert_response :success
  end

  test "should update siezure_report" do
    patch :update, id: @siezure_report, siezure_report: { address: @siezure_report.address, agency: @siezure_report.agency, analytical: @siezure_report.analytical, cargo_state_type: @siezure_report.cargo_state_type, casenum: @siezure_report.casenum, city: @siezure_report.city, cjis: @siezure_report.cjis, compartment_location: @siezure_report.compartment_location, concealment_method: @siezure_report.concealment_method, country: @siezure_report.country, direction: @siezure_report.direction, false_compartment: @siezure_report.false_compartment, hheop: @siezure_report.hheop, initiative: @siezure_report.initiative, k9used: @siezure_report.k9used, lab_stash_house: @siezure_report.lab_stash_house, mile_marker: @siezure_report.mile_marker, narrative: @siezure_report.narrative, poc: @siezure_report.poc, pocphone: @siezure_report.pocphone, road: @siezure_report.road, siezuredate: @siezure_report.siezuredate, siezuretime: @siezure_report.siezuretime, siezuretype: @siezure_report.siezuretype, state: @siezure_report.state, taskforce: @siezure_report.taskforce, zip: @siezure_report.zip }
    assert_redirected_to siezure_report_path(assigns(:siezure_report))
  end

  test "should destroy siezure_report" do
    assert_difference('SiezureReport.count', -1) do
      delete :destroy, id: @siezure_report
    end

    assert_redirected_to siezure_reports_path
  end
end
