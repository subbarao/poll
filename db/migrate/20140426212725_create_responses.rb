class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :seat, index: true
      t.references :user, index: true
      t.references :nomination, index: true

      t.timestamps
    end
  end
end
