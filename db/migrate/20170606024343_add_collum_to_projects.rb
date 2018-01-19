class AddCollumToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :initial_date, :date
  end
end
