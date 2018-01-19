class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_team
  before_action :set_member_role
  before_action :set_pratices_procedures
  before_action :set_procedures
  before_action :set_procedures_project
  
  
  
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end
  
  def index_audit
    @projects = Project.all
  end
  
  def index_unconformities
    @projects = Project.all
  end
  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.all.find(params[:id])
  end

  # GET /projects/new
  def new
    @project = Project.new
    @team = @project.team
    @project.build_team
    @procedures_project = @project.procedures_project
    @project.build_procedures_project
    set_procedures
    set_member
    set_role
    
  end

  # GET /projects/1/edit
  def edit
    set_procedures
    set_member
    set_role
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: "#{@project.name} criado com sucesso." }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: "#{@project.name} atualizado com sucesso."}
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: "#{@project.name} deletado com sucesso."}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
    
    def set_team
      @team = Team.all
    end
    
    def set_member_role
      @member_role = MemberRole.all
    end
    
    def set_member
      @member = Member.all
    end
    
    def set_role
      @role = Role.all
    end
    
    def set_procedures_project
      @procedures_project = ProceduresProject.all
    end
    
    def set_pratices_procedures
      @pratices_procedures = PraticesProcedure.all
    end
    
    def set_procedures
      @procedures = Procedure.all
    end
    
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :client, :description, :date_ready, :initial_date, 
      team_attributes: [:id, :name, :project_id, :_destroy, member_roles_attributes: [:id, :team_id, :member_id, :role_id, :_destroy]],
      procedures_project_attributes:[:id, :project_id,:procedure_id, :_destroy])
    end
end
