class AllowedStatesController < ApplicationController
  # GET /allowed_states
  # GET /allowed_states.json
  def index
    @allowed_states = AllowedState.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @allowed_states }
    end
  end

  # GET /allowed_states/1
  # GET /allowed_states/1.json
  def show
    @allowed_state = AllowedState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @allowed_state }
    end
  end

  # GET /allowed_states/new
  # GET /allowed_states/new.json
  def new
    @allowed_state = AllowedState.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @allowed_state }
    end
  end

  # GET /allowed_states/1/edit
  def edit
    @allowed_state = AllowedState.find(params[:id])
  end

  # POST /allowed_states
  # POST /allowed_states.json
  def create
    @allowed_state = AllowedState.new(params[:allowed_state])

    respond_to do |format|
      if @allowed_state.save
        format.html { redirect_to @allowed_state, notice: 'Allowed state was successfully created.' }
        format.json { render json: @allowed_state, status: :created, location: @allowed_state }
      else
        format.html { render action: "new" }
        format.json { render json: @allowed_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /allowed_states/1
  # PUT /allowed_states/1.json
  def update
    @allowed_state = AllowedState.find(params[:id])

    respond_to do |format|
      if @allowed_state.update_attributes(params[:allowed_state])
        format.html { redirect_to @allowed_state, notice: 'Allowed state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @allowed_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allowed_states/1
  # DELETE /allowed_states/1.json
  def destroy
    @allowed_state = AllowedState.find(params[:id])
    @allowed_state.destroy

    respond_to do |format|
      format.html { redirect_to allowed_states_url }
      format.json { head :no_content }
    end
  end
end
