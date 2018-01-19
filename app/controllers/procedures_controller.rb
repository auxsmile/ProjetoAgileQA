class ProceduresController < ApplicationController
  before_action :set_procedure, only: [:show, :edit, :update, :destroy]
  before_action :set_pratices_procedures
  
  

  # GET /procedures
  # GET /procedures.json
  def index
    @procedures = Procedure.all
  end

  # GET /procedures/1
  # GET /procedures/1.json
  def show
  end

  # GET /procedures/new
  def new
    @procedure = Procedure.new
    @pratice = Pratice.new
    @pratices_procedures = @procedure.pratices_procedures
    @procedure.pratices_procedures.build
    set_pratice
  end

  # GET /procedures/1/edit
  def edit
    set_pratice
    
  end

  # POST /procedures
  # POST /procedures.json
  def create
    @procedure = Procedure.new(procedure_params)

    respond_to do |format|
      if @procedure.save
        format.html { redirect_to @procedure, notice: 'Procedure was successfully created.' }
      else
        format.html { render :new }
        
      end
    end
  end

  # PATCH/PUT /procedures/1
  # PATCH/PUT /procedures/1.json
  def update
    respond_to do |format|
      if @procedure.update(procedure_params)
        format.html { redirect_to @procedure, notice: 'Procedure was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /procedures/1
  # DELETE /procedures/1.json
  def destroy
    @procedure.destroy
    respond_to do |format|
      format.html { redirect_to procedures_url, notice: 'Procedure was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedure
      @procedure = Procedure.find(params[:id])
    end
    
    def set_pratices_procedures
      @pratice_procedure = PraticesProcedure.all
    end
    
    def set_pratice
      @pratice = Pratice.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procedure_params
      params.require(:procedure).permit(:name, :description, 
      pratices_procedures_attributes: [:id, :pratice_id, :procedure_id, :_destroy],
      pratices_attributes: [:id, :name, :description, :_destroy])
    end
end
