# frozen_string_literal: true

require 'test_helper'
require_relative '../lib/ipgeobase'
require_relative '../lib/ipgeobase/url'

class TestIpgeobase < Minitest::Test
  def setup
    @response = load_fixture('response.xml')
    @ip = '8.8.8.8'

    service = 'ip-api.com'
    format = 'xml'
    client = Ipgeobase::HttpClient.new(Net::HTTP)

    Ipgeobase.config(service, format, client)
    template = "http://#{service}{/xml}{/ip}"

    @url = Ipgeobase::Url.new(template).expand({
                                                 'xml' => format,
                                                 'ip' => @ip
                                               })

    stub_request(:any, @url)
      .to_return(body: @response, status: 200)
  end

  def test_url
    assert(@url.host == 'ip-api.com')
    assert(@url.path == '/xml/8.8.8.8')
  end

  def test_ipgeobase
    req = Ipgeobase.lookup(@ip)
    assert(req.city == 'Ashburn')
    assert(req.country == 'United States')
    assert(req.countryCode == 'US')
    assert(req.lat == '39.03')
    assert(req.lon == '-77.5')
  end
end
