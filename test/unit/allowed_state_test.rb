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

require 'test_helper'

class AllowedStateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
