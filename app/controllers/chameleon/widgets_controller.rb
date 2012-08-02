module Chameleon
  class WidgetsController < ApplicationController
    before_filter :find_widget
    before_filter :validate_key
    skip_before_filter :verify_authenticity_token

    caches_action :show, :expires_in => 1.hour

    def show
      @data = @widget.data.call(@auth)
      respond_to do |format|
        format.xml { render "#{@widget.type}" }
      end
    end

    protected
      def find_widget
        @widget = Chameleon::Widget.find(params[:id].gsub(".xml", ""))
        raise "Invalid widget!" if @widget.nil?
      end

      def validate_key
        return if @widget.public
        if @widget.auth
          @auth = @widget.auth.call(self, request, params)
          raise "Invalid authentication!" if !@auth
        else
          raise "Invalid key!" if params[@widget.key_parameter] != @widget.key
        end
      end
  end
end
