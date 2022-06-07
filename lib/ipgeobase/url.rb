# frozen_string_literal: true

require 'addressable/template'
require 'forwardable'

module Ipgeobase
  class Url
    attr_accessor :template

    extend Forwardable

    def initialize(template)
      @template = Addressable::Template.new(template)
    end

    def_delegators :template, :expand
  end
end
