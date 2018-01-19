class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :profile
      t.string :cpf

      t.timestamps null: false
    end
  end
end
