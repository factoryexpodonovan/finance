class AddRememberTokenToFinanceCustomers < ActiveRecord::Migration
  def change
    add_column  :finance_customers, :remember_token, :string
    add_index   :finance_customers, :remember_token
  end
end
