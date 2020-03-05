class DeckOfCards
    attr_reader :suit, :ranks
    def intialize
        @suit = ["H","D","C","S"]
        @ranks = ["J","K","Q",1,2,3,4,5,6,7,8,9,10] # Kings, Queens, Jacks
        # @tricks = trick #Ace
    end

    def shuffle
        puts "Give us 4 cards."
        random_number = Random.new.rand(1..13)
        random_card = ranks.slice(random_number, 1)
        puts random_card
    end
end

showCard = DeckOfCards.new
puts showCard.shuffle.to_s