index = 1
number_group = []

(1..16).each do |number|
    number_group.push(number)

    if index % 4 == 0
        puts number_group.join(', ')
        number_group = []
    end

    index += 1
end