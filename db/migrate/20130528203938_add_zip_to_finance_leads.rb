class AddZipToFinanceLeads < ActiveRecord::Migration
  def change
    add_column  :finance_leads, :zip, :string
  end
end
