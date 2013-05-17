class AddPhoneWorkToFinanceLeads < ActiveRecord::Migration
  def change
    
    add_column finance_leads, :phone_work, :string
  end
end
