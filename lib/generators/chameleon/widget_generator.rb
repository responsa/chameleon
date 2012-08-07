require "rails/generators"

module Chameleon
  class WidgetGenerator < Rails::Generators::Base
    desc "Generates a widget for exposing data to Geckoboard"
    argument :name, :type => :string, :desc => "Name of the widget", :required => true
    argument :type, :type => :string, :desc => "Type of the widget", :required => true

    def create_widget
      data =<<EOF
class #{self.name.camelize} < Chameleon::#{self.type.camelize}Widget
end
EOF
      create_file("app/widgets/#{self.name.underscore}_widget.rb", data)
    end
  end
end
