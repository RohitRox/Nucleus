class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :desc
      t.string :status
      t.string :est_days
      t.references :project
      t.references :user

      t.timestamps
    end
    add_index :tasks, :project_id
    add_index :tasks, :user_id
  end
end
