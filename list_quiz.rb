def three_even?(list)
    i = 0
    while i < list.size - 2 # changed number of times the loop would run
        if list[i] % 2 == 0 && list[i + 1] % 2 == 0 && list[i + 2] % 2 == 0
            return true
        end
    i += 1
    end
    return false
end

# puts three_even?([2, 1, 3, 5]) #false
# puts three_even?([2, 4, 12, 5]) #true
# puts three_even?([2, 1, 4, 6]) #false
# puts three_even?([1, 4, 6, 4]) #true
# puts three_even?([]) #false

def bigger_two(list_1, list_2)
    sum1 = list_1[0] + list_1[1]
    sum2 = list_2[0] + list_2[1]
    if sum1 > sum2
        return list_1
    elsif sum2 > sum1
        return list_2
    end
    return list_1
end

# puts bigger_two([1, 2], [3, 4]) #[3, 4]
# puts bigger_two([1, 7], [4, 4]) #[1, 7]

def series_up(n)
    i = 0
    list = []
    # loops inside loops to make increasing pattern multiple times
    (n-1).times do # number of patterns
        while i < n # puts actually pattern staring from 1
            list.push(1 + i)
            puts list # use of puts here allows for the full output instead of only the last pattern of 1 to n
            i += 1
        end
    end
    if list == [] # if n == 1 the loops don't activate and there in no output. This statement fixes that
        puts 1
    end
end

# series_up(1) # [1]
# series_up(2) # [1, 1, 2]
# series_up(3) # [1, 1, 2, 1, 2, 3]
# series_up(4) # [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]