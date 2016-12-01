class AddFieldToRecord < ActiveRecord::Migration
  def change
    add_column :records, :player_id, :integer
  end
end
