module Chameleon
  class LineWidget < Chameleon::Widget
    def name
      'line'
    end

    def colour
      'ff9900'
    end

    def items
      []
    end

    def x_axis_value_for(item)
      item
    end

    def y_axis_value_for(item)
      item
    end

    def y_axis_labels
      [y_axis.min, y_axis.max]
    end

    def x_axis
      collect_items do |item|
        x_axis_value_for(item)
      end
    end

    def y_axis
      collect_items do |item|
        y_axis_value_for(item)
      end
    end

    private

    def collect_items
      result = []

      items.each do |item|
        result << yield(item)
      end

      result
    end
  end
end