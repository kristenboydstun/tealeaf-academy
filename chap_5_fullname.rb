full_name = ''

names = ['first', 'middle', 'last']

names.each do |name|
	puts 'Hello there, and what\'s your ' + name + ' name?'
	full_name += gets.chomp+' '
end

puts ''
puts 'Your full name:'
puts full_name