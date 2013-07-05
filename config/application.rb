require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module PropertyPortal
  class Application < Rails::Application
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    config.encoding = "utf-8"
    config.autoload_paths += %W(#{Rails.root}/lib)
    config.assets.precompile += [ /\w+\.(?!css).+/, /\w+\.js$/ ]
    config.filter_parameters += [:password]
    config.assets.initialize_on_precompile = true
    config.active_support.escape_html_entities_in_json = true
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end
