class Property < ActiveRecord::Base
  TYPES = %w(Office Land Industrial Retail)
  SUBMARKETS = ['I-20 East', 'I-20 West', 'Intown', 'North Central', 'Northeast', 'Northwest', 'Southside']

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

  def self.filtered_by(params)
    by_property_type(params[:property_type]).by_submarket(params[:submarket])
  end

  def self.by_property_type(type)
    type.present? ? where(property_type: type) : scoped
  end

  def self.by_submarket(submarket)
    submarket.present? ? where(submarket: submarket) : scoped
  end

  def gmaps4rails_address
    "#{self.street_1}, #{self.city}, #{self.state}, #{self.zip}"
  end

end
