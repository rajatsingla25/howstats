class AddFieldTotwentyrecord < ActiveRecord::Migration
  def change
  	add_column :twentyrecords, :player_id, :integer
  end
end
