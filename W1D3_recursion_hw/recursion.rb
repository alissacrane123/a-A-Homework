def sum_to(n)
    return 1 if n == 1
    return nil if n < 0

    n + sum_to(n - 1)
end

def add_numbers(nums_array)
    return nums_array[0] if nums_array.length == 1
    return nil if nums_array.empty? 

    sum = nums_array[1] + nums_array.shift
    nums_array[0] = sum 
    add_numbers(nums_array)
end 


def gamma_fnc(n)
    return 1 if n == 1
    return nil if n <= 0

    (n - 1) * gamma_fnc(n - 1)
end 

def ice_cream_shop(flavors, favorite)
    return false if flavors.empty?

    flavor = flavors.shift 
    if flavor == favorite 
        true 
    else 
        ice_cream_shop(flavors, favorite)
    end 
end 

def reverse(str)
    reversed = []
    str.each_char do |ch|
        reversed.unshift(ch)
    end 
    reversed.join('')
end