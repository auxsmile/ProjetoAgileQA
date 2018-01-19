class CreatePraticesProcedures < ActiveRecord::Migration
  def change
    create_table :pratices_procedures do |t|
      t.references :procedure, index: true, foreign_key: true
      t.references :pratice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
