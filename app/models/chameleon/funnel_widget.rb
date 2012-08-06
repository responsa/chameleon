module Chameleon
  class FunnelWidget < Chameleon::Widget
    def name
      'funnel'
    end
    
    def reverse
      false
    end

    def hide_percentage
      false
    end

    def items
      [{
        :value => '',
        :label => ''
      }]
    end
  end
end