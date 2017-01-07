class CreateOdiranks < ActiveRecord::Migration
  def change
    create_table :odiranks do |t|
      t.string :rank
      t.string :rating
      t.string :points

      t.timestamps null: false
    end
  end
end
