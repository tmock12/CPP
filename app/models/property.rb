class Property < ActiveRecord::Base
  TYPES = %w(Office Land Industrial Retail)
  SUBMARKETS = ['I-20 East', 'I-20 West', 'Intown', 'North Central', 'Northeast', 'Northwest', 'Southside']

  has_and_belongs_to_many :contacts

  has_attached_file :attached_image,
    styles: { small: "200x150#", large: "640x480"},
    default_url:  "missing/small.png"
  has_attached_file :attached_pdf

  validates_presence_of :sale, unless: :lease?, message: "Please choose Sale, Lease, or Both"
  validates_presence_of :lease, unless: :sale?, message: "Please choose Sale, Lease, or Both"

  acts_as_gmappable

  def self.sampler
    [where(sale: true).sample, where(lease: true).sample, where(property_type: "Land").sample]
  end

  def self.sorted
    sorted_properties_with_numbers + properties_without_numbers
  end

  def self.all_properties
    Property.order("LOWER(title)")
  end

  def self.properties_with_numbers
    all_properties.select { |p| p.title[/\A\d+/] }
  end

  def self.properties_without_numbers
    all_properties - properties_with_numbers
  end

  def self.sorted_properties_with_numbers
    properties_with_numbers.sort { |a, b| a.title.to_i <=> b.title.to_i }
  end

  def self.filtered_by(params)
    by_title(params[:title])
    .by_property_types(params[:property_types])
    .by_submarkets(params[:submarkets])
    .by_bank_owned(params[:bank_owned])
  end

  def self.by_title(title)
    if title.present?
      where("title ilike ?", "%#{title}%")
    else
      all
    end
  end

  def self.by_bank_owned(bank)
    bank.present? ? where(bank_owned: true) : all
  end

  def self.by_property_types(types)
    types.present? ? where(property_type: types) : all
  end

  def self.by_submarkets(submarkets)
    submarkets.present? ? where(submarket: submarkets) : all
  end

  def gmaps4rails_address
    "#{self.street_1}, #{self.city}, #{self.state}, #{self.zip}"
  end

end
