class FinanceLead < ActiveRecord::Base
  attr_accessible :best_time_to_call,is_interested_in,home_is_used_for,home_is_a,home_is_on, :comments, :name_first,name_last,address,city,phone_home,phone_work,email, :state_id, :year_home_was_built,credit_standing,contact_by
end
