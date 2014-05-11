class ChangeIncomeFor20122013ForCandidates < ActiveRecord::Migration
  def change
	  execute 'ALTER TABLE candidates ALTER COLUMN income_for_2012_2013 TYPE integer USING (income_for_2012_2013::integer)'
  end
end
