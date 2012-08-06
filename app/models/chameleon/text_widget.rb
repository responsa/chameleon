module Chameleon
  class TextWidget < Chameleon::Widget
    def name
      'text'
    end
    
    def items
      [{ :text => '', :type => :info }]
    end
  end
end