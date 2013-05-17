class AddEmailToFinanceCustomers < ActiveRecord::Migration
  def change
    add_column  :finance_customers, :email, :string
  end
end
