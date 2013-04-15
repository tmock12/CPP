class PropertyDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all

  def formatted_address
    "".tap { |a|
      a << street_1 if street_1
      a << street_2 if street_2
      a << city_state_zip
    }.html_safe
  end

  def street_1
    if source.street_1.present?
      h.content_tag(:dd) { source.street_1 }
    end
  end

  def street_2
    if source.street_2.present?
      h.content_tag(:dd) { source.street_2 }
    end
  end

  def city_state_zip
    h.content_tag(:dd) do
      "#{source.city}, #{source.state} #{source.zip}"
    end
  end

  def availability
    [sale, lease, bank_owned].select(&:present?).join(', ')
  end

  def sale
    "For Sale" if model.sale?
  end

  def lease
    "For Lease" if model.lease?
  end

  def bank_owned
    "Bank Owned" if model.bank_owned?
  end

end
