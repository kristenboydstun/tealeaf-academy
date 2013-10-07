
def shuffle input_array
	output_array = []
	while !input_array.empty?
		output_array << input_array.delete_at(input_array.index(input_array.sample))
	end
  output_array
end

myArr = ['banana', 'apple', 'peach', 'cherry', 'peanuts']

puts shuffle myArr