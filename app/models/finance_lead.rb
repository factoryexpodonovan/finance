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

class FinanceLead < ActiveRecord::Base
  attr_accessible :best_time_to_call, :is_interested_in, :home_is_used_for,
                  :home_is_a, :home_is_on, :comments, :name_first,
                  :name_last, :address, :city, :phone_home, :phone_work,
                  :email, :state_id, :year_home_was_built, :credit_standing,
                  :contact_by, :zip
                  
  
  extend FriendlyId
  friendly_id :friendly_email, use: :slugged
  
  
  validates :name_first, :name_last, :phone_home, :email,  :presence => true
                                  
  validates :email,           :uniqueness =>  true,
                              :email      =>  true
  
  before_save {|finance_lead| finance_lead.email = email.downcase  }
  
  def friendly_email
    firstpart = email.split("@")[0]
    firstpart_clean = firstpart.gsub(".", "dot")
    lastpart = email.split("@")[1]
    lastpart_clean = lastpart.gsub(".", "dot")
    
    firstpart_clean + "at" + lastpart_clean
  end
  
  def fullname
    name_first + " " + name_last
  end
  
end
