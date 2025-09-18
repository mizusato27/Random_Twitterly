require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module RandomTwitterly
  class Application < Rails::Application
    config.load_defaults 8.0
    config.autoload_lib(ignore: %w[assets tasks])
  end
end

# ジェネレータの設定の変更
Bundler.require(*Rails.groups)

module Projects
  class Application < Rails::Application
    config.load_defaults 7.0

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: false,
        view_specs: false,
        helper_specs: false,
        routing_specs: false
      g.factory_bot false
    end
  end
end
