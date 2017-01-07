class CreateTestranks < ActiveRecord::Migration
  def change
    create_table :testranks do |t|
      t.string :rank
      t.string :rating
      t.string :points

      t.timestamps null: false
    end
  end
end
