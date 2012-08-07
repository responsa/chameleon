class PieWidget < Chameleon::PieWidget
  def items
    [
      {
        :value => 0.5,
        :label => 'PieA',
        :colour => 'ABABAB'
      },
      {
        :value => 1.2,
        :label => 'PieB',
        :colour => 'CDCDCD'
      },
      {
        :value => 3.5,
        :label => 'PieC',
        :colour => 'EFEFEF'
      }
    ]
  end
end