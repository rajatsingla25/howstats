class AddFieldToTestrecord < ActiveRecord::Migration
  def change
    add_column :testrecords, :player_id, :integer
  end
end
