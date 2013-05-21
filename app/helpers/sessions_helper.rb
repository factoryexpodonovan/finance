module SessionsHelper
  
  def sign_in(finance_customer)
    cookies.permanent[:remember_token] = finance_customer.remember_token
    self.current_finance_customer = finance_customer
  end
  
  def signed_in?
    !current_finance_customer.nil?
  end
  
  def current_finance_customer=(finance_customer)
    @current_finance_customer = finance_customer
  end
  
  def current_finance_customer
    @current_finance_customer ||= FinanceCustomer.find_by_remember_token(cookies[:remember_token])
  end
  
  
  def sign_out
    self.current_finance_customer = nil
    cookies.delete(:remember_token)
  end
  
  
  
end