class CreateTwentyrecords < ActiveRecord::Migration
  def change
    create_table :twentyrecords do |t|
      t.integer :m
      t.integer :inn
      t.integer :no
      t.integer :runs
      t.integer :hs
      t.float :avg
      t.integer :bf
      t.float :sr
      t.integer :hundred
      t.integer :dhundred
      t.integer :fifty
      t.integer :four
      t.integer :six
      t.integer :st

      t.timestamps null: false
    end
  end
end
