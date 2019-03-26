class Array 
    def my_each(&prc)
        self.map {|el| prc.call(el)}
        self
    end
    
    def my_select(&prc)
        selected = []
        self.my_each do |el|
            selected << el if prc.call(el)
        end 
        selected 
    end
    
    def my_reject(&prc)
        rejected = []
        self.my_each do |el|
            rejected << el if !prc.call(el)
        end 
        rejected  
    end

    def my_any?(&prc)
        self.my_each do |el|
            return true if prc.call(el)
        end 
        false 
    end
    
    def my_all?(&prc)
        self.my_each do |el|
            return false if !prc.call(el)
        end 
        true 
    end 

    def my_flatten(flattened = [])
        self.each do |el| 
            if el.is_a?(Array)
                el.my_flatten(flattened)
            else 
                flattened << el 
            end 
        end
        flattened 
    end

    def my_zip(*args)
        new_arr = Array.new(self.length) {Array.new(args.length + 1)}
        (0...self.length).each do |i|
            row = new_arr[i]
            row[0] = self[i]

            j = 0
            while j < args.length 
                row[j + 1] = args[j][i] 
                j += 1 
            end 
        end 

        new_arr    
    end
    
    def my_rotate(n = 1)
        if n > 0
            n.times do 
                el = self.shift 
                self << el
            end 
        elsea
            (-n).times do 
                el = self.pop 
                self.unshift(el)
            end 
        end 
         
        self        
    end

    def my_join(n = '')
        str = '' 
        self.each do |el|
            str += el 
            str += n 
        end 
        str[0...-1]         
    end

    def my_reverse
        new_arr = [] 
        
        self.each do |el|
            new_arr.unshift(el)
        end 
        new_arr
    end
end 
 

