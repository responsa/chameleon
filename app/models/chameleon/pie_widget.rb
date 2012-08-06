module Chameleon
  class PieWidget < Chameleon::Widget
    def name
      'pie'
    end

    def items
      [
        {
          :value => '',
          :label => '',
          :colour => ''
        },
        {
          :value => '',
          :label => '',
          :colour => ''
        }
      ]
    end
  end
end