# frozen_string_literal: true

require_relative 'ipgeobase/version'

module Ipgeobase
  autoload :Parser, 'ipgeobase/parser'
  autoload :HttpClient, 'ipgeobase/http_client'
  autoload :Url, 'ipgeobase/url'

  class << self
    def lookup(ip)
      url = url(ip)
      req_xml = HttpClient.get(url)
      Parser.parse(req_xml)
    end

    def url(ip)
      template = 'http://ip-api.com/xml{/ip}'
      Url.new(template).expand({ 'ip' => ip })
    end
  end
end
