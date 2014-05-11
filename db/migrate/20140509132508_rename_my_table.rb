class RenameMyTable < ActiveRecord::Migration
  def change
		rename_table :candidate_infos, :candidates
  end
end
