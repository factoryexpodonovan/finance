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
#  remember_token  :string(255)
#

require 'test_helper'

class FinanceCustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
