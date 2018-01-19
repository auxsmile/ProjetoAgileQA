class AddCollumToCorrectiveAction < ActiveRecord::Migration
  def change
    add_column :corrective_actions, :completed, :string
  end
end
