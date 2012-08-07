class RagWidget < Chameleon::RagWidget
  def red
    { :value => 5, :label => "Five" }
  end

  def amber
    { :value => 2, :label => "Two" }
  end

  def green
    { :value => 1, :label => "One" }
  end
end
