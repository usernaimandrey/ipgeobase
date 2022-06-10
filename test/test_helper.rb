# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'ipgeobase'

require 'minitest/autorun'

require 'webmock/minitest'
WebMock.disable_net_connect!

if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

def load_fixture(filename)
  File.read(File.dirname(__FILE__) + "/fixtures/#{filename}")
end
