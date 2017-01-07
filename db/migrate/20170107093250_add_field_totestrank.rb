class AddFieldTotestrank < ActiveRecord::Migration
  def change
  	add_column :testranks, :country_id, :integer
  	add_column :twentyranks, :country_id, :integer
  	add_column :odiranks, :country_id, :integer
  end
end
