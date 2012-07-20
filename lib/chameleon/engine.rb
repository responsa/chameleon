module Chameleon
  class Engine < Rails::Engine
    isolate_namespace Chameleon
    initializer "chameleon.initialization" do
      Dir.glob(File.join("app", "widgets", "*.rb")).each { |f| Chameleon::DSL.new(File.expand_path(f)) }
    end
  end
end