# frozen_string_literal: true

require 'test_helper'
require_relative '../../lib/ipgeobase'

class TestIpgeobase < Minitest::Test
  def setup
    response = load_fixture('response.xml')
    @ip = '8.8.8.8'
    url = Ipgeobase.url(@ip)
    stub_request(:get, url)
      .to_return(body: response, status: 200)
  end

  def test_ipgeobase
    req = Ipgeobase.lookup(@ip)
    assert_equal('Ashburn', req.city)
    assert_equal('United States', req.country)
    assert_equal('US', req.countryCode)
    assert_equal('39.03', req.lat)
    assert_equal('-77.5', req.lon)
  end
end
