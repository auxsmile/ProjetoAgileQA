class CorrectiveActionsController < ApplicationController
  before_action :set_project
	before_action :set_audit
	before_action :set_unconformity


	def index
		@corrective_action = @unconformity.corrective_action
	end

	def show
		@corrective_action = @unconformity.corrective_action
	end

	def edit
	  @corrective_action = @unconformity.corrective_action
	end

	def update
		@corrective_action = @unconformity.corrective_action
		if @corrective_action.update(corrective_action_params)
		redirect_to project_audit_path(@project, @audit),notice:"#{@corrective_action.name} modificada com sucesso!"
		else
			render :edit
		end
	end

	def new
	  @corrective_action = @unconformity.build_corrective_action
	end

	def create
		@corrective_action = @unconformity.build_corrective_action(corrective_action_params)
		if @corrective_action.save
			redirect_to project_audit_path(@project, @audit), notice: 'Ação Corretiva criada.'
		else
			render :new
		end
	end

	def destroy
		@corrective_action = @unconformity.corrective_action
		@corrective_action.destroy
		redirect_to project_audit_path(@project, @audit), alert:"#{@corrective_action.name} deletada com sucesso!"
	end



	private

		def set_project
			@project = Project.find(params[:project_id])
		end

		def set_audit
			@audit = @project.audits.find(params[:audit_id])
		end

		def set_unconformity
			@unconformity = @audit.unconformities.find(params[:unconformity_id])
		end
		def corrective_action_params
			params.require(:corrective_action).permit(:name,:description, :completed)
		end
end
