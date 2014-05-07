class CreateCandidateInfos < ActiveRecord::Migration
  def change
    create_table :candidate_infos do |t|
      t.string :sex
      t.integer :age
      t.string :address
      t.integer :mobile
      t.string :email
      t.string :pan
      t.string :married
      t.string :spouse_name
      t.string :education
      t.string :occupation
      t.string :income_for_2012_2013
      t.integer :nominations_id

      t.timestamps
    end
  end
end
