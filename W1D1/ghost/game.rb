require_relative "array_to_hash.rb"
require_relative "player.rb"

class Game
    def initialize(player_1, player_2)
        @players = [player_1, player_2]
        @fragment = [] 
        dictionary_arr = File.readlines('dictionary.txt').map {|line| line.chomp }
        @dictionary = dictionary_arr.to_alphabet_hash
    end
    
    def current_player 
        @players[0]
    end 

    def previous_plyaer
        @players[1]
    end 

    def next_player!
        @players[0], @players[1] = @players[1], @players[0]
        @players[0]
    end 

    def take_turn(player)
        guess = player.guess 
        until player.alert_valid_guess(guess)
            guess = player.guess 
        end 
        guess 
    end 

    def valid_play?(guess)
        new_fragment = @fragment << guess
        first_letter = new_fragment[0]
        words = @dictionary[first_letter]
        
        words.each do |word|
            if word.include?(new_fragment)
                @fragment = new_fragment
                return true 
            end 
        end 

        p 'invalid play'
        self.next_player
        false 
    end 

end 