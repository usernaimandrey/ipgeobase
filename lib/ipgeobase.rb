# frozen_string_literal: true

require_relative 'ipgeobase/version'

module Ipgeobase
  class Error < StandardError; end

  autoload :Parser, 'ipgeobase/parser'
  autoload :HttpClient, 'ipgeobase/http_client'
  autoload :Url, 'ipgeobase/url'

  class << self
    def lookup(ip)
      template = "http://#{@service}{/#{@format}}{/ip}"
      url = Url.new(template).expand({
                                       'xml' => @format,
                                       'ip' => ip
                                     })
      req = HttpClient.new(@client).get(url)
      Parser.new(req)
    end

    def config(service, format, client)
      @service = service
      @format = format
      @client = client
    end
  end
end
