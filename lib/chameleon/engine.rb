module Chameleon
  class Engine < Rails::Engine
    isolate_namespace Chameleon
    config.to_prepare do
      Dir.glob(File.join("app", "widgets", "*.rb")).each { |f| require_dependency File.expand_path(f) }
    end
  end
end