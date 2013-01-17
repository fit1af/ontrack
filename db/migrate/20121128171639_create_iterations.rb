class CreateIterations < ActiveRecord::Migration
  def change
    create_table :iterations do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :project_id

      t.timestamps
    end
  end
end
