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
  
  before_save { |user| user.name = name.downcase }
  
  before_save :create_remember_token
  
  
  validates :name,                  presence: true
  validates :password,              presence: true,   length: { minimum: 6}
  validates :password_confirmation, presence: true
  
  
  
  private
  
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
  
end
