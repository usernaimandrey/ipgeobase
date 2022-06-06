# frozen_string_literal: true

require 'test_helper'
require_relative '../lib/ipgeobase.rb'

class TestIpgeobase < Minitest::Test

  def test_test
    assert(Ipgeobase.lookup(8) == 8)
  end
end
