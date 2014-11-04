class TouristsitesController < ApplicationController
  before_action :set_touristsite, only: [:show, :edit, :update, :destroy]

  # GET /touristsites
  # GET /touristsites.json
  def index
    @state = State.find(params[:state_id])
    @states = State.all
    @touristsites = Touristsite.all
  end

  # GET /touristsites/1
  # GET /touristsites/1.json
  def show
    @state = State.find(params[:state_id])
    @states = State.all
  end

  # GET /touristsites/new
  def new
    @state = State.find(params[:state_id])
    @states = State.all
    @touristsite = Touristsite.new
  end

  # GET /touristsites/1/edit
  def edit
    @state = State.find(params[:state_id])
  end

  # POST /touristsites
  # POST /touristsites.json
  def create
    @touristsite = Touristsite.new(touristsite_params)
 
    respond_to do |format|
      if @touristsite.save
        format.html { redirect_to states_path, notice: 'Touristsite was successfully created.' }
        format.json { render :show, status: :created, location: @touristsite }
      else
        format.html { render :new }
        format.json { render json: @touristsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /touristsites/1
  # PATCH/PUT /touristsites/1.json
  def update
    respond_to do |format|
      if @touristsite.update(touristsite_params)
        format.html { redirect_to @touristsite, notice: 'Touristsite was successfully updated.' }
        format.json { render :show, status: :ok, location: @touristsite }
      else
        format.html { render :edit }
        format.json { render json: @touristsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /touristsites/1
  # DELETE /touristsites/1.json
  def destroy
    @touristsite.destroy
    respond_to do |format|
      format.html { redirect_to touristsites_url, notice: 'Touristsite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_touristsite
      @touristsite = Touristsite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def touristsite_params
      params.require(:touristsite).permit(:name, :location, :description, :picture, :rating, :state_id)
    end
end
