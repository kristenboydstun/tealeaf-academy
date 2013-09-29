puts 'Please enter a starting year'
start_yr = gets.chomp.to_i

puts ''
puts 'Please enter an ending year'
end_yr = gets.chomp.to_i

puts ''
for this_yr in start_yr..end_yr
	if (this_yr%4) == 0
		if (this_yr%100) != 0 || (this_yr%400) == 0
			puts this_yr
		end
	end
end
