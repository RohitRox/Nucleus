class AddFields < ActiveRecord::Migration
  def change
  	add_column :projects, :author_id, :integer
  end
end
