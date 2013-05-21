class SessionsController < ApplicationController

  def new
  end

  def create
    finance_customer = FinanceCustomer.find_by_name(params[:session][:name].downcase)
    if finance_customer && finance_customer.authenticate(params[:session][:password])
      #sign in the user and redirect to the finance_customer's page
      sign_in finance_customer
      redirect_to finance_customer
    else
      flash.now[:error] = 'Invalid Login Information'
      render 'new'
    end
    
  end

  def destroy
     sign_out
     redirect_to 'sessions#new'
  end
  
end