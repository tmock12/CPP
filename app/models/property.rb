class Property < ActiveRecord::Base
  has_and_belongs_to_many :contacts
  attr_accessible :city, :description, :sale, :lease, :price, :bank_owned,
    :property_type, :size, :state, :street_1, :street_2, :title, :zip, :submarket,
    :attached_image, :contact_ids, :attached_pdf, :latitude, :longitude

  has_attached_file :attached_image,
    styles: { small: "200x150#", large: "640x480"},
    default_url:  "missing/small.png"
  has_attached_file :attached_pdf

  validates_presence_of :sale, unless: :lease?, message: "Please choose Sale, Lease, or Both"
  validates_presence_of :lease, unless: :sale?, message: "Please choose Sale, Lease, or Both"

  acts_as_gmappable

  def gmaps4rails_address
    "#{self.street_1}, #{self.city}, #{self.state}, #{self.zip}"
  end

end
