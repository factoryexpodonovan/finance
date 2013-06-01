class AddStateabbToFinanceLeads < ActiveRecord::Migration
  def change
    add_column  :finance_leads, :state_abb, :string
  end
end
