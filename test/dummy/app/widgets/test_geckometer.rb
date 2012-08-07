class GeckometerWidget < Chameleon::GeckometerWidget
  def value
    23
  end

  def min
    { :value => 10, :label => "Min visitors" }
  end

  def max
    { :value => 30, :label => "Max visitors" }
  end
end

