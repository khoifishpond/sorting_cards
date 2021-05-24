require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test
  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of(Guess, guess)
  end

  def test_it_has_a_card_to_guess
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of(Card, guess.card)
  end

  def test_it_makes_a_guess
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal("10 of Hearts", guess.guess)
  end
end
