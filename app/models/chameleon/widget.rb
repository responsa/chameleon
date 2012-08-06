module Chameleon
  class Widget
    def self.find(klass)
      klass = (klass.to_s + "_widget").camelize.constantize
      Chameleon::Widget.descendants.include?(klass) ? klass.new : nil
    end
  end
end