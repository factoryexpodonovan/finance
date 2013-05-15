class CreateFinanceCustomers < ActiveRecord::Migration
  def change
    create_table :finance_customers do |t|
      t.string :name
      t.boolean :active
      t.integer :view_limit
      t.date :date_limit
      t.boolean :admin
      t.string :password_digest

      t.timestamps
    end
  end
end
