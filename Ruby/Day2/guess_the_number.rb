target_number = rand(100)
puts "Guess the number"
guess = gets.to_i

while guess != target_number
  if guess < target_number
    puts "Your guess was too low, try again"
  else
    puts "Your guess was too high, try again"
  end
  guess = gets.to_i
end

puts "Correct, the number was " + target_number.to_s


