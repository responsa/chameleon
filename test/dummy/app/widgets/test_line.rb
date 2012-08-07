class LineWidget < Chameleon::LineWidget
  def items
    [1, 2, 3, 4, 5]
  end

  def y_axis
    [0, 2, 3, 5, 9]
  end

  def y_axis_labels
    [0, 10]
  end

  def colour
    'ABABAB'
  end
end