class RemovingCandidateColumnFromNominationsTable < ActiveRecord::Migration
  def change
	  remove_column :nominations, :candidate, :string
  end
end
