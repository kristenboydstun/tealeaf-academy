
contentsArray = []
contentsArray.push(["Chapter 1: Getting Started", "page 1"])
contentsArray.push(["Chapter 2: Numbers", "page 9"])
contentsArray.push(["Chapter 3: Letters", "page 13"])

line_width = 50

puts("Table of Contents".center(line_width))
puts("")

for line in contentsArray
	puts(line[0].ljust(line_width) + line[1].rjust(line_width))
end