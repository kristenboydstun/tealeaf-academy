byeCount = 0

puts 'Please enter some words'
puts 'Hit enter on a blank line to exit'

sortMe = []

while true
	request = gets.chomp

	if request == ''
		break
	else
		sortMe.push(request)
	end
end

meSorted = sortMe.sort()

puts 'Sorted words:'
for item in meSorted
	puts item
end