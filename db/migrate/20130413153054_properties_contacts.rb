class PropertiesContacts < ActiveRecord::Migration
  def up
    create_table :contacts_properties, :id => false do |t|
      t.column :contact_id, :integer
      t.column :property_id, :integer
    end
  end

  def down
    drop_table :contacts_properties
  end
end
