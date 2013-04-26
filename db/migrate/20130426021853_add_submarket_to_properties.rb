class AddSubmarketToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :submarket, :string
  end
end
