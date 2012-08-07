require "test_helper"

class WidgetTest < Test::Unit::TestCase
  def test_widget
    widget = Chameleon::Widget.find(:test)
    assert_not_nil widget
    assert_equal 'number_and_secondary', widget.name
    assert_equal 1, widget.current[:value]
    assert_equal 2, widget.previous[:value]
  end
end
