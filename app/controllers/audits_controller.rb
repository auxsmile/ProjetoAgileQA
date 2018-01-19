class AuditsController < ApplicationController
	before_action :set_project


	def index
		@audits = @project.audits
		
	end

	def show
		#pega o audit
		@audit = @project.audits.find(params[:id])
		
		#pega o unconformities
		@unconformities = @audit.unconformities
	end

	def edit
		@audit = @project.audits.find(params[:id])
	end

	def update
		@audit = @project.audits.find(params[:id])
		if @audit.update(audit_params)
		redirect_to project_audit_path(@project, @audit),notice:"#{@audit.identification}: modificado com sucesso!"
		end
	end

	def new
		@audit = @project.audits.new
	end

	def create
		@audit = @project.audits.new(audit_params)
		if @audit.save
			redirect_to project_audits_path(@project), notice: 'Auditoria criada.'
		else
			render :new
		end
	end

	def destroy
		@audit = @project.audits.find(params[:id])
		@audit.destroy
		redirect_to project_audits_path(@project), alert:"#{@audit.identification}: deletado com sucesso!"
	end



	private

		def audit_params
			params.require(:audit).permit(:identification, :description, :datetime, :kind, :schedule, :completed)
		end

		def set_project
			@project = Project.find(params[:project_id])
		end
end
