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
#  zip                 :string(255)
#  state_abb           :string(255)
#

class FinanceLead < ActiveRecord::Base
  
  attr_accessible :name_first,  :name_last, :email,
                  :address, :zip, :city,  :state_abb,
                  :phone_home,  :phone_work,
                  :is_interested_in,  :home_is_used_for,
                  :home_is_a, :home_is_on,  :year_home_was_built,
                  :credit_standing, :contact_by,  :best_time_to_call,
                  :comments
  
  belongs_to :state
  
  
  
  extend FriendlyId
  friendly_id :email, use: :slugged
  
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  
  validates :name_first,  presence: true
  validates :name_last,   presence: true
  validates :state_abb,   presence: true
                                  
  validates :email,       presence: true,
                          format: { with: VALID_EMAIL_REGEX },
                          uniqueness: true
  

  
  before_save {|finance_lead| finance_lead.email = email.downcase  }
  before_save {|finance_lead| finance_lead.state_id = State.find_by_abbreviation(finance_lead.state_abb).id}
  
  
  def fullname
    name_first + " " + name_last
  end
  
  #def self.filter_allowed_for(finance_customer)
  #  where(:state_id => finance_customer.state_ids)
  #end
  
  
end
