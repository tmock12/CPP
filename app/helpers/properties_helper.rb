module PropertiesHelper

  def property_type_options_for_select(property_type = "Office")
    options_for_select( %w(Office Land Industrial Retail), selected: property_type )
  end

  def property_type_options_for_filter_select(property_type = "All Properties")
    options_for_select( [['All Properties', '']] + 
                       Property::TYPES.map{ |t| [t.titleize, t]},
                       selected: property_type
                      )
  end

  def submarket_options_for_filter_select(submarket = "All Submarkets")
    options_for_select(
                       [['All Submarkets', '']] +
                       Property::SUBMARKETS.map{ |s| [s.titleize, s]},
                       selected: submarket
                      )
  end

  def submarket_options_for_select(submarket = "I-20 East")
    options_for_select(
      ['I-20 East',
       'I-20 West',
       'Intown',
       'North Central',
       'Northeast',
       'Northwest',
       'Southside'],
       selected: submarket
    )
  end

  def google_map(properties)
    gmaps4rails(property_map_window(properties))
  end

  def property_map_window(properties)
    properties.to_gmaps4rails do |property, marker|
      marker.infowindow render(:partial => "/properties/property", :locals => { :property => property})
      marker.title   property.title
    end
  end

end
