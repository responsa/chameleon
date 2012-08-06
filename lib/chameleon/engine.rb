module Chameleon
  class Engine < Rails::Engine
    isolate_namespace Chameleon
    initializer 'chameleon' do |app|
      Dir.glob(File.join("app", "widgets", "*.rb")).each { |f| require_dependency File.expand_path(f) }
    end
  end
end