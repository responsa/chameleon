module Chameleon
  class Widget
    cattr_accessor :widgets

    def self.find(name)
      (@@widgets || {})[name.to_sym]
    end

    def initialize(name, &block)
      @@widgets ||= {}
      @@widgets[name] = self
      @name = name
      instance_eval(&block)
    end

    def name
      @name
    end

    def key(value = nil)
      @key = value unless value.nil?
      @key
    end

    def key_parameter(value = nil)
      @key_parameter = value unless value.nil?
      @key_parameter || :key
    end

    def auth(&block)
      @auth = block if block_given?
      @auth
    end

    def type(value = nil)
      @type = value unless value.nil?
      @type
    end

    def public(value = nil)
      @public = value unless value.nil?
      @public || false
    end

    def data(&block)
      @data = block if block_given?
      @data
    end
  end
end