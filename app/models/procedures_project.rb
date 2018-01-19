class ProceduresProject < ActiveRecord::Base
  belongs_to :procedure
  belongs_to :project
end
