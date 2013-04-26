module PropertiesHelper

  def property_type_options_for_select
    options_for_select( %w(Office Land Industrial Retail) )
  end

  def submarket_options_for_select
    options_for_select(
      ['I-20 East',
       'I-20 West',
       'Intown',
       'North Central',
       'Northeast',
       'Northwest',
       'Southside']
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
