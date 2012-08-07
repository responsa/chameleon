class NumberAndSecondaryWithTextWidget < Chameleon::NumberAndSecondaryWidget
  def current
    { :value => 1, :label => 'Display Me' }
  end

  def previous
    { :value => 2}
  end
end