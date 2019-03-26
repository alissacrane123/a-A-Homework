# dictionary_arr = File.readlines('dictionary.txt')

dictionary_arr = File.readlines('dictionary.txt').map {|line| line.chomp }


class Array 
    def to_alphabet_hash
        hash = {}
        self.each do |word|
            first_letter = word[0]
            if hash[first_letter] == nil 
                hash[first_letter] = [word]
            else 
                hash[first_letter] << word
            end 
        end 
        hash 
    end
end 




# def to_hash(arr)
#     hash = {}
#     arr.each do |word|
#         first_letter = word[0]
#         if hash[first_letter] == nil 
#             hash[first_letter] = [word]
#         else 
#             hash[first_letter] << word
#         end 
#     end 
#     hash 
# end 



