class TextWithMultiplePanelsAndTypesWidget < Chameleon::TextWidget
  def items
    [
      { :text => "First panel text", :type => :info },
      { :text => "Second panel text", :type => :alert },
      { :text => "Third panel text" }
    ]
  end
end
