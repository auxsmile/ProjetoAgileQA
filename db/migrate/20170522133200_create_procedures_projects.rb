class CreateProceduresProjects < ActiveRecord::Migration
  def change
    create_table :procedures_projects do |t|
      t.references :procedure, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
