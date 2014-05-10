class AddingDeletingColumn < ActiveRecord::Migration
  def change
	  remove_column :candidates, :nominations_id
	  add_column :nominations, :candidate_id, :integer
  end
end
