module Chameleon
  class NumberAndSecondaryWidget < Chameleon::Widget
    def name
      'number_and_secondary'
    end

    def current
      { :value => '', :label => '' }
    end

    def previous
      { :value => '', :label => '' }
    end
  end
end