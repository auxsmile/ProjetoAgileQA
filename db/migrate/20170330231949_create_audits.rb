class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.string :identification
      t.text :description
      t.date :datetime
      t.time :schedule
      t.string :kind
      t.string :completed
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
