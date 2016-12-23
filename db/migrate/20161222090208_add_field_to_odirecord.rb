class AddFieldToOdirecord < ActiveRecord::Migration
  def change
    add_column :odirecords, :player_id, :integer
  end
end
