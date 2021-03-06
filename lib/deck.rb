class Deck
  VALUES = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  SUITS = ["♠", "♥", "♦", "♣"]
  attr_accessor :collection

  def initialize
    @collection = []

    VALUES.each do |value|
      SUITS.each do |suit|
        @collection << Card.new(value, suit)
      end
    end
    @collection.shuffle!
  end
end
