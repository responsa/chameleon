module Chameleon
  class WidgetsController < ApplicationController
    skip_before_filter :verify_authenticity_token

    def show
      @widget = Chameleon::Widget.find(params[:id])

      respond_to do |format|
        format.xml { render @widget.name + '_widget' }
      end
    end
  end
end
