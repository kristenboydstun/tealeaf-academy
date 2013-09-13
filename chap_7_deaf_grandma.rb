byeCount = 0

while true
	request = gets.chomp

	if request != request.upcase
		puts 'HUH?!  SPEAK UP, SONNY!'
	else
		puts 'NO, NOT SINCE '+(rand(20) + 1930).to_s+'!'

		if request != 'BYE'
			byeCount = 0
		else
			byeCount = byeCount + 1
		end

	end

	if byeCount == 3
		break
	end
end
