class FinanceLeadsController < ApplicationController
  # GET /finance_leads
  # GET /finance_leads.json
  def index
    @finance_leads = FinanceLead.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @finance_leads }
    end
  end

  # GET /finance_leads/1
  # GET /finance_leads/1.json
  def show
    @finance_lead = FinanceLead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @finance_lead }
    end
  end

  # GET /finance_leads/new
  # GET /finance_leads/new.json
  def new
    @finance_lead = FinanceLead.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finance_lead }
    end
  end

  # GET /finance_leads/1/edit
  def edit
    @finance_lead = FinanceLead.find(params[:id])
  end

  # POST /finance_leads
  # POST /finance_leads.json
  def create
    @finance_lead = FinanceLead.new(params[:finance_lead])

    respond_to do |format|
      if @finance_lead.save
        format.html { redirect_to @finance_lead, notice: 'Finance lead was successfully created.' }
        format.json { render json: @finance_lead, status: :created, location: @finance_lead }
      else
        format.html { render action: "new" }
        format.json { render json: @finance_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /finance_leads/1
  # PUT /finance_leads/1.json
  def update
    @finance_lead = FinanceLead.find(params[:id])

    respond_to do |format|
      if @finance_lead.update_attributes(params[:finance_lead])
        format.html { redirect_to @finance_lead, notice: 'Finance lead was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @finance_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finance_leads/1
  # DELETE /finance_leads/1.json
  def destroy
    @finance_lead = FinanceLead.find(params[:id])
    @finance_lead.destroy

    respond_to do |format|
      format.html { redirect_to finance_leads_url }
      format.json { head :no_content }
    end
  end
end
