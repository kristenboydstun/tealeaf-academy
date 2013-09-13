while true
	request = gets.chomp

	if request != request.upcase
		puts 'HUH?!  SPEAK UP, SONNY!'
	else
		puts 'NO, NOT SINCE '+(rand(20) + 1930).to_s+'!'
	end

	if request == 'BYE'
		break
	end
end
