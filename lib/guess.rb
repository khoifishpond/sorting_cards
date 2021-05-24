class Guess
  attr_reader :guess, :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def response # why does this even need to exist?
    @guess     # literally already initialized
  end

  def correct?
    response == "#{card.value} of #{card.suit}"
  end

end
