class TextWithMultiplePanelsWidget < Chameleon::TextWidget
  def items
    [
      { :text => "First panel text" },
      { :text => "Second panel text" },
      { :text => "Third panel text" }
    ]
  end
end
