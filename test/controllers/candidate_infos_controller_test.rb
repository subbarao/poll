require 'test_helper'

class CandidateInfosControllerTest < ActionController::TestCase
  setup do
    @candidate_info = candidate_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidate_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate_info" do
    assert_difference('CandidateInfo.count') do
      post :create, candidate_info: { address: @candidate_info.address, age: @candidate_info.age, education: @candidate_info.education, email: @candidate_info.email, income_for_2012_2013: @candidate_info.income_for_2012_2013, married: @candidate_info.married, mobile: @candidate_info.mobile, occupation: @candidate_info.occupation, pan: @candidate_info.pan, sex: @candidate_info.sex, spouse_name: @candidate_info.spouse_name }
    end

    assert_redirected_to candidate_info_path(assigns(:candidate_info))
  end

  test "should show candidate_info" do
    get :show, id: @candidate_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate_info
    assert_response :success
  end

  test "should update candidate_info" do
    patch :update, id: @candidate_info, candidate_info: { address: @candidate_info.address, age: @candidate_info.age, education: @candidate_info.education, email: @candidate_info.email, income_for_2012_2013: @candidate_info.income_for_2012_2013, married: @candidate_info.married, mobile: @candidate_info.mobile, occupation: @candidate_info.occupation, pan: @candidate_info.pan, sex: @candidate_info.sex, spouse_name: @candidate_info.spouse_name }
    assert_redirected_to candidate_info_path(assigns(:candidate_info))
  end

  test "should destroy candidate_info" do
    assert_difference('CandidateInfo.count', -1) do
      delete :destroy, id: @candidate_info
    end

    assert_redirected_to candidate_infos_path
  end
end
