class TestWidget < Chameleon::NumberAndSecondaryWidget
  def current
    { :value => 1 }
  end

  def previous
    { :value => 2 }
  end
end
