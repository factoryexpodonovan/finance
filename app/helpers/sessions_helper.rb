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
  
  def signed_in_finance_customer
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end
  
  
  def sign_out
    self.current_finance_customer = nil
    cookies.delete(:remember_token)
  end
  
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end
  
  def store_location
    session[:return_to] = request.url
  end
  
  
  
end