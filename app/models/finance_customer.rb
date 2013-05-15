class FinanceCustomer < ActiveRecord::Base
  attr_accessible :active, :admin, :date_limit, :name, :password_digest, :view_limit
end
