class AddColumToCorretiveAction < ActiveRecord::Migration
  def change
    add_column :corrective_actions, :name, :string
    add_column :corrective_actions, :description, :text
    add_reference :corrective_actions, :unconformity, index: true, foreign_key: true
  end
end
