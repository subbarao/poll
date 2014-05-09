class RenameMyTable < ActiveRecord::Migration
  def change
		rename_table :candidates, :candidates
  end
end
