class ChangeListingTypeToLeaseAndSaleBooleansOnProperties < ActiveRecord::Migration
  def up
    remove_column :properties, :listing_type
    add_column :properties, :lease, :boolean
    add_column :properties, :sale, :boolean
  end

  def down
    remove_column :properties, :sale
    remove_column :properties, :lease
    add_column :properties, :listing_type, :string
  end
end
