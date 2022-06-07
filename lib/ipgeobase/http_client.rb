# frozen_string_literal: true

require 'forwardable'

module Ipgeobase
  class HttpClient
    attr_accessor :client

    extend Forwardable

    def initialize(client)
      @client = client
    end

    def_delegator :client, :get
  end
end
