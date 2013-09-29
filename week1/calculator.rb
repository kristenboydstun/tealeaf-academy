puts "Please enter the first number"
num_1 = gets.chomp

puts "Please enter the second number"
num_2 = gets.chomp

puts "Please enter an operation (+, -, *, /)"
operation = gets.chomp

valid_operations = ["+","-","*","/"]

puts ""

if valid_operations.include?(operation)
	result = num_1.to_f.send operation.to_s, num_2.to_f
	puts "#{num_1} #{operation} #{num_2} = #{result}"
else
	puts "That was not a valid operation"
end

