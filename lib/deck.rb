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

  def merge_sort(cards)
    if cards.size <= 1
      cards
    else
      mid = cards.size / 2
      left = merge_sort(cards[0..mid - 1])
      right = merge_sort(cards[mid..cards.size])
      require 'pry'; binding.pry
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first.rank == right.first.rank
      if left.first.suit_rank < right.first.suit_rank
        [left.first] + merge(left[1..left.size], right)
      else
        [right.first] + merge(left, right[1..right.size])
      end
    elsif left.first.rank < right.first.rank
      [left.first] + merge(left[1..left.size], right)
    else
      [right.first] + merge(left, right[1..right.size])
    end
  end
end
