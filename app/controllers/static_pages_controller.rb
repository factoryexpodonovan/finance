class StaticPagesController < ApplicationController
  def home
    
  end

  def admin
    @finance_customers = FinanceCustomer.all
  end

  def showlead
  end
  
  def thankyou
    
  end
  
  
  
end
