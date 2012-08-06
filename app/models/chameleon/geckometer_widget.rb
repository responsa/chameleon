module Chameleon
  class GeckometerWidget < Chameleon::Widget
    def name
      'geckometer'
    end

    def value
      ''
    end

    def min
      {
        :value => '',
        :label => ''
      }
    end

    def max
      {
        :value => '',
        :label => ''
      }
    end
  end
end