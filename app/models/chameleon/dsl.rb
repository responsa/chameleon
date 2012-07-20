module Chameleon
  class DSL
    def initialize(file_name)
      instance_eval(File.read(file_name))
    end

    def widget(name, &block)
      Chameleon::Widget.new(name, &block)
    end
  end
end