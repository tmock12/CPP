class Property < ActiveRecord::Base
  attr_accessible :city, :description, :sale, :lease, :price, :bank_owned,
    :property_type, :size, :state, :street_1, :street_2, :title, :zip, :attached_image

  has_attached_file :attached_image,
    styles: { small: "200x150#", large: "640x480"},
    default_url:  "missing/small.png"
end
