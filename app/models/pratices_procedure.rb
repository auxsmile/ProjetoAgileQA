class PraticesProcedure < ActiveRecord::Base
  belongs_to :procedure
  belongs_to :pratice
  has_many :pratices_procedures_projects
  has_many :projects, through: :pratices_procedures_project
end
