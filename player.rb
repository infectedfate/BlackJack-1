require_relative('deck')

class Player
  attr_reader :name
  attr_accessor :cards, :cash

  def initialize(name)
    @name = name
    @cards = []
    @cash = 0
  end

  def

  def card_sum
    values = []
    @cards.sort.each do |card| # сортировка, что бы тузы были последними
      values << if Deck.deck_of_cards[card] == 11 && values.sum > 10
                  1
                else
                  Deck.deck_of_cards[card]
                end
    end
    values.sum
  end

end
