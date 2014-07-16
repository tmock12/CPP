class ApiPropertiesSerializer < ActiveModel::Serializer
  root false
  attributes :title, :attached_pdf, :heading, :attached_image

  def heading
    "#{object.property_type} #{PropertyDecorator.new(object).availability}"
  end

  def attached_image
    object.attached_image.url(:small)
  end

  def attached_pdf
    object.attached_pdf.url
  end
end
