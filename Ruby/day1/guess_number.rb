correct_answer = rand(10)

puts 'Please type a number between 0 and 9'

while true do
    answer = gets().to_i

    if answer > correct_answer
        puts "Please type a number smaller than #{answer}"
    elsif answer < correct_answer
        puts "Please type a number bigger than #{answer}"
    else
        puts 'You are right'

        break
    end
end