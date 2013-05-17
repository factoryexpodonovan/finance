# == Schema Information
#
# Table name: allowed_states
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  state_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AllowedState < ActiveRecord::Base
  attr_accessible :customer_id, :state_id
end
