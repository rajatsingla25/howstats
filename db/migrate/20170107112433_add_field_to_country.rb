class AddFieldToCountry < ActiveRecord::Migration
  def change
   
    add_column :countries, :url, :string
  end
end
