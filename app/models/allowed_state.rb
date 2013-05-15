class AllowedState < ActiveRecord::Base
  attr_accessible :customer_id, :state_id
end
