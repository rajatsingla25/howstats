class AddFieldToiplrecord < ActiveRecord::Migration
  def change
  	add_column :iplrecords, :player_id, :integer
  end
end
