class UnconformitiesController < ApplicationController
	before_action :set_project
	before_action :set_audit

	def index
		@unconformities = @audit.unconformities
	end

	def show
		@unconformity = @audit.unconformities.find(params[:id])
	end

	def edit
		@unconformity = @audit.unconformities.find(params[:id])
	end

	def update
		@unconformity= @audit.unconformities.find(params[:id])
		if @unconformity.update(unconformity_params)
		redirect_to project_audit_unconformity_path(@project, @audit),notice:"#{@unconformity.name} modificado com sucesso!"
		else
			render :edit
		end
	end

	def new
		@unconformity = @audit.unconformities.new
	end

	def create
		@unconformity = @audit.unconformities.new(unconformity_params)
		if @unconformity.save
			redirect_to project_audit_path(@project, @audit), notice: 'Não Conformidade criada.'
		else
			render :new
		end
	end

	def destroy
		@unconformity = @audit.unconformities.find(params[:id])
		@unconformity.destroy
		redirect_to project_audit_path(@project, @audit), alert:"#{@unconformity.name} deletado com sucesso!"
	end



	private

		def unconformity_params
			params.require(:unconformity).permit(:name,:description)
		end
    
		def set_project
			@project = Project.find(params[:project_id])
		end

		def set_audit
			@audit = @project.audits.find(params[:audit_id])
		end
end
