require 'test_helper'

class PersonnelsControllerTest < ActionController::TestCase
  setup do
    @personnel = personnels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personnels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personnel" do
    assert_difference('Personnel.count') do
      post :create, personnel: { biography: @personnel.biography, employee_id: @personnel.employee_id, first_name: @personnel.first_name, formally_affiliated: @personnel.formally_affiliated, ibs_retiree: @personnel.ibs_retiree, ibs_rostered: @personnel.ibs_rostered, informally_affiliated: @personnel.informally_affiliated, last_name: @personnel.last_name, mailing_list: @personnel.mailing_list, notes: @personnel.notes, research_interests: @personnel.research_interests, salutation: @personnel.salutation, skills: @personnel.skills }
    end

    assert_redirected_to personnel_path(assigns(:personnel))
  end

  test "should show personnel" do
    get :show, id: @personnel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personnel
    assert_response :success
  end

  test "should update personnel" do
    patch :update, id: @personnel, personnel: { biography: @personnel.biography, employee_id: @personnel.employee_id, first_name: @personnel.first_name, formally_affiliated: @personnel.formally_affiliated, ibs_retiree: @personnel.ibs_retiree, ibs_rostered: @personnel.ibs_rostered, informally_affiliated: @personnel.informally_affiliated, last_name: @personnel.last_name, mailing_list: @personnel.mailing_list, notes: @personnel.notes, research_interests: @personnel.research_interests, salutation: @personnel.salutation, skills: @personnel.skills }
    assert_redirected_to personnel_path(assigns(:personnel))
  end

  test "should destroy personnel" do
    assert_difference('Personnel.count', -1) do
      delete :destroy, id: @personnel
    end

    assert_redirected_to personnels_path
  end
end
