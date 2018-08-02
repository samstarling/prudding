require 'minitest/autorun'
require_relative '../lib/prudding'

class PruddingTest < Minitest::Test
  def test_pudding_turns_into_prudding
    assert_equal "prudding", "pudding".prudding
  end
end
