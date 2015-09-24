puts "Guess a number between 1 and 100"
number = rand(1..100)

correct = false

until correct
  input = gets
  guess = Integer(input)

  if guess > number
    puts "Too high... Try again!"
  elsif guess < number
    puts "Too low... Try again!"
  else
    correct = true
    puts "Correct!"
  end
end
