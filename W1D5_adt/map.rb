class Map
    def initialize 
        @map = []
    end 

    def set(key,value)
        @map << [key, value]
    end 

    def get(key)
        @map.each do |el|
            if el[0] == key 
                return el[1]
            end 
        end 
    end 

    def delete(key)
        @map.each do |el|
            if el[0] == key
                @map.delete(el)
            end 
        end 
    end 

    def show
        @map.each do |el|
            puts el
        end 
    end 
end 
