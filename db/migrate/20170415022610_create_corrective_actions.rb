class CreateCorrectiveActions < ActiveRecord::Migration
  def change
    create_table :corrective_actions do |t|

      t.timestamps null: false
    end
  end
end
