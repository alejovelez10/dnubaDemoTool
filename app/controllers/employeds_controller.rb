class EmployedsController < ApplicationController
  before_action :set_employed, only: [:show, :edit, :update, :destroy]

  # GET /employeds
  # GET /employeds.json
  def index
    @employeds = Employed.all
  end

  # GET /employeds/1
  # GET /employeds/1.json
  def show
  end

  # GET /employeds/new
  def new
    @employed = Employed.new
  end

  # GET /employeds/1/edit
  def edit
  end

  # POST /employeds
  # POST /employeds.json
  def create
    @employed = Employed.new(employed_params)

    respond_to do |format|
      if @employed.save
        format.html { redirect_to @employed, notice: 'Employed was successfully created.' }
        format.json { render :show, status: :created, location: @employed }
      else
        format.html { render :new }
        format.json { render json: @employed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeds/1
  # PATCH/PUT /employeds/1.json
  def update
    respond_to do |format|
      if @employed.update(employed_params)
        format.html { redirect_to @employed, notice: 'Employed was successfully updated.' }
        format.json { render :show, status: :ok, location: @employed }
      else
        format.html { render :edit }
        format.json { render json: @employed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeds/1
  # DELETE /employeds/1.json
  def destroy
    @employed.destroy
    respond_to do |format|
      format.html { redirect_to employeds_url, notice: 'Employed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employed
      @employed = Employed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employed_params
      params.require(:employed).permit(:name, :cedula, :cargo, :actum_id)
    end
end
