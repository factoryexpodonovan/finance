# == Schema Information
#
# Table name: finance_leads
#
#  id                  :integer          not null, primary key
#  name_first          :string(255)
#  name_last           :string(255)
#  address             :string(255)
#  city                :string(255)
#  phone_home          :string(255)
#  email               :string(255)
#  is_interested_in    :string(255)
#  home_is_used_for    :string(255)
#  home_is_a           :string(255)
#  home_is_on          :string(255)
#  year_home_was_built :string(255)
#  credit_standing     :string(255)
#  contact_by          :string(255)
#  best_time_to_call   :string(255)
#  state_id            :integer
#  comments            :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  phone_work          :string(255)
#  slug                :string(255)
#

require 'test_helper'

class FinanceLeadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
