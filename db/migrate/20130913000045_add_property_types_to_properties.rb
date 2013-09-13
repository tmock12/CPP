class AddPropertyTypesToProperties < ActiveRecord::Migration
  def up
    add_column :properties, :property_types, :string, array: true

    Property.all.each do |property|
      property.update_attribute(:property_types, [property.property_type])
    end
  end

  def down
    remove_column :properties, :property_types
  end
end
