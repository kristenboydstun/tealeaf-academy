def modern_roman_numeral(input)
	roman_numerals = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
	subtraction_hash = { "V" => "I", "X" => "I", "L" => "X", "C" => "X", "D" => "C", "M" => "C"}
	key_array = roman_numerals.keys.sort{|x,y| y <=> x }
	answer = ""
	for key in key_array

		num_repeats = input/key
		answer += (roman_numerals[key].to_s)*num_repeats
		input = input % key

		#check subtraction
		if (subtraction_hash.has_key?(roman_numerals[key]))
			sub_value = subtraction_hash[roman_numerals[key]]
			sub_key = roman_numerals.key(sub_value)
			mod_key = (key - sub_key)
			how_many = input/mod_key
			answer += ((sub_value.to_s)+(roman_numerals[key].to_s))*how_many
			input = input % mod_key
		end
	end
	answer
end

puts "please enter a number"
input_number = gets.chomp.to_i
puts

puts modern_roman_numeral(input_number)