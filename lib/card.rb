class Card
  attr_reader :suit, :value, :rank, :suit_rank

  def initialize(value, suit)
    @suit = suit
    @value = value

    if value == "Ace"
      @rank = 14
    elsif value == "King"
      @rank = 13
    elsif value == "Queen"
      @rank = 12
    elsif value == "Jack"
      @rank = 11
    else
      @rank = value.to_i
    end

    if suit == "Clubs"
      @suit_rank = 1
    elsif suit == "Diamonds"
      @suit_rank = 2
    elsif suit == "Hearts"
      @suit_rank = 3
    elsif suit == "Spades"
      @suit_rank = 4
    end
  end
end
