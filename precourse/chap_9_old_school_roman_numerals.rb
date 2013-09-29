def old_roman_numeral(input)
	roman_numerals = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
	key_array = roman_numerals.keys.sort{|x,y| y <=> x }
	answer = ""
	for key in key_array
		num_repeats = input/key
		answer += (roman_numerals[key].to_s)*num_repeats
		input = input % key
	end
	answer
end


puts "please enter a number"
input_number = gets.chomp.to_i
puts

puts old_roman_numeral(input_number)