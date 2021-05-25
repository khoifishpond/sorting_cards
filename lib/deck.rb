class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.size
  end

  def sort
    # A > K > Q > J > 10 > .. > 2
    # spades > hearts > diamonds > clubs
    # bubble sort
    loop do
      swapped = false

      (count - 1).times do |index|
        if @cards[index].rank == @cards[index + 1].rank
          if @cards[index].suit_rank > @cards[index + 1].suit_rank
            @cards[index], @cards[index + 1] = @cards[index + 1], @cards[index]
            swapped = true
          end
        elsif @cards[index].rank > @cards[index + 1].rank
          @cards[index], @cards[index + 1] = @cards[index + 1], @cards[index]
          swapped = true
        end
      end
      break if not swapped
    end
  end
end
