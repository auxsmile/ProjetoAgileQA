class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :client
      t.text :description
      t.date :date_ready

      t.timestamps null: false
    end
  end
end
