if Rails.env.production?
  Paperclip::Attachment.default_options[:path] = '/:style/:filename'
end
