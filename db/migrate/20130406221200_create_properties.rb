class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :size
      t.string :price
      t.string :property_type
      t.string :listing_type
      t.boolean :bank_owned

      t.timestamps
    end
  end
end
