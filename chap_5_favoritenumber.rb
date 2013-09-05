puts 'What is your favorite number?'
number = gets.chomp.to_i

puts ''
# using the trick from the appendix
puts "Why don\'t you consider #{number + 1} instead?"