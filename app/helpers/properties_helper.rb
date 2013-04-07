module PropertiesHelper

  def property_type_options_for_select
    options_for_select( %w(Office Land Industrial) )
  end

  def listing_type_options_for_select
    options_for_select( ['Lease', 'For Sale'] )
  end

end
