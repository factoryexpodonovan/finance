class AddSlugToFinanceLeads < ActiveRecord::Migration
  def change
    add_column  :finance_leads, :slug, :string
    add_index   :finance_leads, :slug
  end
end
