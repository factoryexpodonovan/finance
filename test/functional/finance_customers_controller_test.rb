require 'test_helper'

class FinanceCustomersControllerTest < ActionController::TestCase
  setup do
    @finance_customer = finance_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finance_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finance_customer" do
    assert_difference('FinanceCustomer.count') do
      post :create, finance_customer: { active: @finance_customer.active, admin: @finance_customer.admin, date_limit: @finance_customer.date_limit, name: @finance_customer.name, password_digest: @finance_customer.password_digest, view_limit: @finance_customer.view_limit }
    end

    assert_redirected_to finance_customer_path(assigns(:finance_customer))
  end

  test "should show finance_customer" do
    get :show, id: @finance_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finance_customer
    assert_response :success
  end

  test "should update finance_customer" do
    put :update, id: @finance_customer, finance_customer: { active: @finance_customer.active, admin: @finance_customer.admin, date_limit: @finance_customer.date_limit, name: @finance_customer.name, password_digest: @finance_customer.password_digest, view_limit: @finance_customer.view_limit }
    assert_redirected_to finance_customer_path(assigns(:finance_customer))
  end

  test "should destroy finance_customer" do
    assert_difference('FinanceCustomer.count', -1) do
      delete :destroy, id: @finance_customer
    end

    assert_redirected_to finance_customers_path
  end
end
