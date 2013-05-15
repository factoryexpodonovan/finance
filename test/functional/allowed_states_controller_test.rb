require 'test_helper'

class AllowedStatesControllerTest < ActionController::TestCase
  setup do
    @allowed_state = allowed_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allowed_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allowed_state" do
    assert_difference('AllowedState.count') do
      post :create, allowed_state: { customer_id: @allowed_state.customer_id, state_id: @allowed_state.state_id }
    end

    assert_redirected_to allowed_state_path(assigns(:allowed_state))
  end

  test "should show allowed_state" do
    get :show, id: @allowed_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allowed_state
    assert_response :success
  end

  test "should update allowed_state" do
    put :update, id: @allowed_state, allowed_state: { customer_id: @allowed_state.customer_id, state_id: @allowed_state.state_id }
    assert_redirected_to allowed_state_path(assigns(:allowed_state))
  end

  test "should destroy allowed_state" do
    assert_difference('AllowedState.count', -1) do
      delete :destroy, id: @allowed_state
    end

    assert_redirected_to allowed_states_path
  end
end
