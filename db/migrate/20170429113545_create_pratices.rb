class CreatePratices < ActiveRecord::Migration
  def change
    create_table :pratices do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
