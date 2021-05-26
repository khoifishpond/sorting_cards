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
      return cards
    end
      mid = (cards.size / 2).round
      left = merge_sort(cards.take(mid))
      right = merge_sort(cards.drop(mid))

      @cards = merge(left, right)
  end

  def merge(left, right)
    if left.empty?
      return right
    end

    if right.empty?
      return left
    end

    smallest_number = if left.first.rank == right.first.rank
      if left.first.suit_rank < right.first.suit_rank
        left.shift
      else
        right.shift
      end
    elsif left.first.rank < right.first.rank
      left.shift
    else
      right.shift
    end
    recursive = merge(left,right)

    [smallest_number].concat(recursive)
  end
end
