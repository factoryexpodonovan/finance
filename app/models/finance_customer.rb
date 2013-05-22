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
#  email           :string(255)
#

class FinanceCustomer < ActiveRecord::Base
  attr_accessible :name, :email,
                  :password, :password_confirmation
                  
  has_secure_password
  
  extend FriendlyId
  friendly_id :name
  
  before_save { |finance_customer| finance_customer.name = name.downcase }
  
  before_save :create_remember_token
  
  
  validates :name,                  :presence => true,
                                    :uniqueness =>  true
  
  validates :password,              :presence =>  true,
                                    :confirmation =>  true,
                                    :length =>  { :minimum => 6 },
                                    :on =>  :create
                                    
  validates :email,                 :presence =>  true,
                                    :email  =>  true,
                                    :uniqueness =>  true
                                    
  
  
  
  private
  
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
  
end
