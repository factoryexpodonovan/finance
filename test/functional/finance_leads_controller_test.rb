require 'test_helper'

class FinanceLeadsControllerTest < ActionController::TestCase
  setup do
    @finance_lead = finance_leads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finance_leads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finance_lead" do
    assert_difference('FinanceLead.count') do
      post :create, finance_lead: { best_time_to_call,is_interested_in,home_is_used_for,home_is_a,home_is_on: @finance_lead.best_time_to_call,is_interested_in,home_is_used_for,home_is_a,home_is_on, comments: @finance_lead.comments, name_first,name_last,address,city,phone_home,phone_work,email: @finance_lead.name_first,name_last,address,city,phone_home,phone_work,email, state_id: @finance_lead.state_id, year_home_was_built,credit_standing,contact_by: @finance_lead.year_home_was_built,credit_standing,contact_by }
    end

    assert_redirected_to finance_lead_path(assigns(:finance_lead))
  end

  test "should show finance_lead" do
    get :show, id: @finance_lead
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finance_lead
    assert_response :success
  end

  test "should update finance_lead" do
    put :update, id: @finance_lead, finance_lead: { best_time_to_call,is_interested_in,home_is_used_for,home_is_a,home_is_on: @finance_lead.best_time_to_call,is_interested_in,home_is_used_for,home_is_a,home_is_on, comments: @finance_lead.comments, name_first,name_last,address,city,phone_home,phone_work,email: @finance_lead.name_first,name_last,address,city,phone_home,phone_work,email, state_id: @finance_lead.state_id, year_home_was_built,credit_standing,contact_by: @finance_lead.year_home_was_built,credit_standing,contact_by }
    assert_redirected_to finance_lead_path(assigns(:finance_lead))
  end

  test "should destroy finance_lead" do
    assert_difference('FinanceLead.count', -1) do
      delete :destroy, id: @finance_lead
    end

    assert_redirected_to finance_leads_path
  end
end
