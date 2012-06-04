class CreateProjects < ActiveRecord::Migration
  def change
    create_table(:projects) do |t|
      t.string :name
      t.text :desc
      t.string :cost
      t.datetime :deadline
      t.string :category
      t.timestamps
    end
    add_index :projects, :name
  end
end
