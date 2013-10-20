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
      post :create, siezure_report: {  }
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
    patch :update, id: @siezure_report, siezure_report: {  }
    assert_redirected_to siezure_report_path(assigns(:siezure_report))
  end

  test "should destroy siezure_report" do
    assert_difference('SiezureReport.count', -1) do
      delete :destroy, id: @siezure_report
    end

    assert_redirected_to siezure_reports_path
  end
end
