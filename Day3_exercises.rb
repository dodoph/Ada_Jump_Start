# 1. Write a program that allows a user to play a guessing number game.
# Your program should generate a random number between 0 – 1000 (including 0, but not including 1000).
# Allow the user to make a guess until they guess the answer. After each guess you should print "higher" or "lower".
# When they guess it correctly print a winning message along with their total number of guesses.

Guess my number: 10
rand_num = rand(0...1000)
print "Enter your guess number: "
number = gets.chomp.to_i
time = 1
while number != rand_num do
  if number > rand_num
    puts "HIGHER"
    number = gets.chomp.to_i
  elsif number < rand_num
    puts "LOWER"
    number = gets.chomp.to_i
  end
  time = time + 1
end
puts "YOU GOT IT #{time} GUESSE(S)!"


# 2.Write a program that plays duck duck goose.
# Allow the user to enter the player's number they want to call goose on,
# and then say "duck" for each player before the "goose", then say "goose" for the chosen player.

print "Enter enter the player's number: "
call_goose = gets.chomp.to_i
(1...call_goose).each do |i|
  puts "Player #{i}: Duck"
end
puts "Player #{call_goose}: Goose"

# 3.Write a program that allows a user to enter the number of petals on a flower.
# Then one by one, print “plucking petal #1: they love me!”.
# Alternate “They love me” and “They love me not” as well as increase the petal number for each petal.

print "Enter numbers of petals: "
numbers = gets.chomp.to_i
(1..numbers). each do |i|
  if i % 2 != 0
    puts "plucking petal ##{i}: they love me!"
  else
    puts "plucking petal ##{i}: They love me not"
  end
end
#4. You don't trust your users.
#Modify the program below to require the user to enter the same value twice in order to add that value to the total.
#Code
#
# puts "Hello! We are going to total some numbers!"
# puts "Enter a negative number to quit."
#
# total = 0
# input = gets.chomp.to_i
# while input > -1
#   total += input
#   input = gets.chomp.to_i
# end
#
# puts "Result: #{total}"
# Example run
#
# Hello! We are going to total some numbers!
# Enter a negative number to quit.
#
# 3
# 3
# 2
# 2
# -1
# -1
#
# Result: 5

#method 1
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."
total = 0
input = 0
while input > -1
  puts "Enter the number to total: "
  input = gets.chomp.to_i
  puts "Enter your number again: "
  sec = gets.chomp.to_i
  until sec == input do
    puts "Your number is not correct, enter again: "
    sec = gets.chomp.to_i
  end
  total = total + sec
end
puts "Result: #{total - sec}"

#method 2
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."
total = 0
input = 0
while input > -1
puts "Enter the number to total: "
  input = gets.chomp.to_i
  puts "Enter your number again: "
  sec = gets.chomp.to_i
  if input > -1
    until sec == input do
      puts "Your number is not correct, enter again: "
      sec = gets.chomp.to_i
    end
    total = total + input
  else
    until sec == input do
      puts "Your number is not correct, enter again: "
      sec = gets.chomp.to_i
    end
  end
end
puts "Result: #{total}"
