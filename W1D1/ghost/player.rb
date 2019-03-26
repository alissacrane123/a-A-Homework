class Player
    def initialize(name)
        @name = name 
    end 

    def guess 
        p "enter letter"
        guess = gets.chomp
    end 

    def alert_invalid_guess(guess)
        if !('a'..'z').include?(guess)
            puts "that guess is invalid"
            false
        end
        true  
    end 

end 