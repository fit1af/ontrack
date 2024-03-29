class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :group_id, default: 0
      t.integer :project_id, default: 0

      t.timestamps
    end
  end
end
