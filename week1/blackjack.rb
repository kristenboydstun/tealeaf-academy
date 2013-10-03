class Deck
  def initialize
    @suits = ["hearts","spades","diamonds","clubs"]
  	@card_names = ["ace", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "jack", "queen", "king"]
  	@cards = []
  	@valueDictionary = {"ace" => 11, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10, "jack" => 10, "queen" => 10, "king" => 10}

    @suits.each do |suit|
    	@card_names.each do |card_name|
    		@cards << CardHolder.new(card_name, suit, @valueDictionary["#{card_name}"])
    	end
    end
  end  

  def numCards
  	@cards.length
  end

  def getCards  
    @cards
  end 

  def shuffle
  	@cards.shuffle!
  end

  def getCard
  	@cards.pop
  end
end 

CardHolder = Struct.new(:card_name, :suit, :value) do

end

class Player
  def initialize (name, deck)
  	@name = name
  	@deck = deck
  	@cards = []
  end

  def greeting
    "Welcome " + @name
  end
  def showHand
  	@cards
  end
  def countCards
  	total = 0
  	@cards.each do |card| 
  		total += card.value
  	end
  	total
  end
  def hit
  	@cards << @deck.getCard
  end
end






puts "Welcome to blackjack! Please enter your name:"
name = gets.chomp
puts ""

myDeck = Deck.new
myDeck.shuffle

player = Player.new(name, myDeck)
dealer = Player.new("dealer", myDeck)
puts player.greeting

puts "DEALING"
player.hit
player.hit
dealer.hit
dealer.hit


puts "SHOWING PLAYER'S HAND"
puts player.showHand

puts "SHOWING DEALER'S HAND"
puts dealer.showHand

puts "Number of cards in the deck:"
puts myDeck.numCards

puts "TOTAL IN PLAYER'S HAND"
puts player.countCards