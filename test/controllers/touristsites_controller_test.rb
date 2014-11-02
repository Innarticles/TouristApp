require 'test_helper'

class TouristsitesControllerTest < ActionController::TestCase
  setup do
    @touristsite = touristsites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:touristsites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create touristsite" do
    assert_difference('Touristsite.count') do
      post :create, touristsite: { description: @touristsite.description, location: @touristsite.location, name: @touristsite.name, picture: @touristsite.picture, rating: @touristsite.rating, state_id: @touristsite.state_id }
    end

    assert_redirected_to touristsite_path(assigns(:touristsite))
  end

  test "should show touristsite" do
    get :show, id: @touristsite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @touristsite
    assert_response :success
  end

  test "should update touristsite" do
    patch :update, id: @touristsite, touristsite: { description: @touristsite.description, location: @touristsite.location, name: @touristsite.name, picture: @touristsite.picture, rating: @touristsite.rating, state_id: @touristsite.state_id }
    assert_redirected_to touristsite_path(assigns(:touristsite))
  end

  test "should destroy touristsite" do
    assert_difference('Touristsite.count', -1) do
      delete :destroy, id: @touristsite
    end

    assert_redirected_to touristsites_path
  end
end
