def three_even?(list)
    i = 0
    while i < list.size
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
    size = n * (n + 1) / 2
    while i < size
        if size - (n - i) > 0
            pattern_count += 1
        end
        i += 1
    end
    pattern_count.times do
        puts (1 + n)
    end
        
end

puts series_up(1) # [1]
puts series_up(2) # [1, 1, 2]
puts series_up(3) # [1, 1, 2, 1, 2, 3]
puts series_up(4) # [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]