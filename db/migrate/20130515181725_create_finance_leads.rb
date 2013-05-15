class CreateFinanceLeads < ActiveRecord::Migration
  def change
    create_table :finance_leads do |t|
      t.string  :name_first
      t.string  :name_last
      t.string  :address
      t.string  :city
      t.string  :phone_home
      t.string  :email
      t.string  :is_interested_in
      t.string  :home_is_used_for
      t.string  :home_is_a
      t.string  :home_is_on
      t.string  :year_home_was_built
      t.string  :credit_standing
      t.string  :contact_by
      t.string  :best_time_to_call
      t.integer     :state_id
      t.text    :comments

      t.timestamps
    end
  end
end
