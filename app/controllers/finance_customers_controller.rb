class FinanceCustomersController < ApplicationController
  
  
  
  
  # GET /finance_customers
  # GET /finance_customers.json
  def index
    @finance_customers = FinanceCustomer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @finance_customers }
    end
  end

  # GET /finance_customers/1
  # GET /finance_customers/1.json
  def show
    @finance_customer = FinanceCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @finance_customer }
    end
  end

  # GET /finance_customers/new
  # GET /finance_customers/new.json
  def new
    @finance_customer = FinanceCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finance_customer }
    end
  end

  # GET /finance_customers/1/edit
  def edit
    @finance_customer = FinanceCustomer.find(params[:id])
  end

  # POST /finance_customers
  # POST /finance_customers.json
  def create
    @finance_customer = FinanceCustomer.new(params[:finance_customer])

    respond_to do |format|
      if @finance_customer.save
        format.html { redirect_to @finance_customer, notice: 'Finance customer was successfully created.' }
        format.json { render json: @finance_customer, status: :created, location: @finance_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @finance_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /finance_customers/1
  # PUT /finance_customers/1.json
  def update
    @finance_customer = FinanceCustomer.find(params[:id])

    respond_to do |format|
      if @finance_customer.update_attributes(params[:finance_customer])
        format.html { redirect_to @finance_customer, notice: 'Finance customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @finance_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finance_customers/1
  # DELETE /finance_customers/1.json
  def destroy
    @finance_customer = FinanceCustomer.find(params[:id])
    @finance_customer.destroy

    respond_to do |format|
      format.html { redirect_to finance_customers_url }
      format.json { head :no_content }
    end
  end
end
