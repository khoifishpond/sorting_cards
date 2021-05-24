require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

class DeckTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    cards = [card_1, card_2, card_3]

    deck = Deck.new(cards)

    assert_instance_of(Deck, deck)
  end

  def test_it_takes_an_array_of_cards
    def test_it_exists
      card_1 = Card.new("3", "Hearts")
      card_2 = Card.new("4", "Clubs")
      card_3 = Card.new("5", "Diamonds")
      cards = [card_1, card_2, card_3]

      deck = Deck.new(cards)

      assert_instance_of(Array, deck.cards)
      assert_instance_of(Card, deck.cards[0])
    end
  end


    def test_it_can_count_number_of_cards_in_deck
      card_1 = Card.new("3", "Hearts")
      card_2 = Card.new("4", "Clubs")
      card_3 = Card.new("5", "Diamonds")
      cards = [card_1, card_2, card_3]

      deck = Deck.new(cards)

      assert_equal(3, deck.count)
    end
end
