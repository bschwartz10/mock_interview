gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'coding_challenge'

class CodingChallengeTest < Minitest::Test
  def test_it_computes_max_profit
    stocks = CodingChallenge.new

    assert_equal 6, stocks.max_profit([10, 15, 7, 5, 8, 11, 9])
  end
end
