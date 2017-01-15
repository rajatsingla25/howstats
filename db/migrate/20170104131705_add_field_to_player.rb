class AddFieldToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :Born, :string
    add_column :players, :birth, :string
    add_column :players, :nickname, :string
    add_column :players, :height, :string
    add_column :players, :role, :string
    add_column :players, :batStyle, :string
    add_column :players, :bowlStyle, :string
    add_column :players, :debut, :string
    add_column :players, :lastMatch, :string
    add_column :players, :currentTeams, :string
  end
end
