# frozen_string_literal: true

require_relative 'ipgeobase/version'

module Ipgeobase
  class Error < StandardError; end

  class << self
    def lookup(ip)
      ip
    end
  end
end
