class PraticesController < ApplicationController
  before_action :set_pratice, only: [:show, :edit, :update, :destroy]

  # GET /pratices
  # GET /pratices.json
  def index
    @pratices = Pratice.all
  end

  # GET /pratices/1
  # GET /pratices/1.json
  def show
  end

  # GET /pratices/new
  def new
    @pratice = Pratice.new
  end

  # GET /pratices/1/edit
  def edit
  end

  # POST /pratices
  # POST /pratices.json
  def create
    @pratice = Pratice.new(pratice_params)

    respond_to do |format|
      if @pratice.save
        format.html { redirect_to @pratice, notice: 'Pratice was successfully created.' }
        format.json { render :show, status: :created, location: @pratice }
      else
        format.html { render :new }
        format.json { render json: @pratice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pratices/1
  # PATCH/PUT /pratices/1.json
  def update
    respond_to do |format|
      if @pratice.update(pratice_params)
        format.html { redirect_to @pratice, notice: 'Pratice was successfully updated.' }
        format.json { render :show, status: :ok, location: @pratice }
      else
        format.html { render :edit }
        format.json { render json: @pratice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pratices/1
  # DELETE /pratices/1.json
  def destroy
    @pratice.destroy
    respond_to do |format|
      format.html { redirect_to pratices_url, notice: 'Pratice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pratice
      @pratice = Pratice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pratice_params
      params.require(:pratice).permit(:name, :description)
    end
end
