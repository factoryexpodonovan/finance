# == Schema Information
#
# Table name: finance_customers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  active          :boolean
#  view_limit      :integer
#  date_limit      :date
#  admin           :boolean
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class FinanceCustomer < ActiveRecord::Base
  attr_accessible :active, :admin, :date_limit, :name, :password_digest, :view_limit
end
