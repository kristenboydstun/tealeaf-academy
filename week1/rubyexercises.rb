#1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
puts "\n#1 ---"
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |x| puts x }

#2. Same as above, but only print out values greater than 5.
puts "\n#2 ---"
arr.each { |x| puts x if x > 5 }

#3. Now, using the same array from #2, use the "select" method to extract all odd numbers into a new array.
puts "\n#3 ---"
new_arr = arr.select { |x| x.odd? }
puts new_arr

#4. Append "11" to the end of the array. Prepend "0" to the beginning.
puts "\n#4 ---"
arr.push(11)
arr.unshift(0)
puts arr

#5. Get rid of "11". And append a "3".
puts "\n#5 ---"
arr.pop
arr.push(3)
puts arr

#6. Get rid of duplicates without specifically removing any one value. 
puts "\n#6 ---"
puts arr.uniq

#7. What's the major difference between an Array and a Hash?
puts "\n#7 ---"
puts "Hashes are collections of key/value pairs. Arrays are ordered and indexed by integers."

#8. Create a Hash using both Ruby 1.8 and 1.9 syntax.
#   Suppose you have a h = {a:1, b:2, c:3, d:4}
puts "\n#8 ---"
hash_1 = {:a => 1, :b => 2, :c =>3, :d => 4}
puts hash_1
hash_2 = {a: 1, b: 2, c: 3, d: 4}
puts hash_2

#9. Get the value of key "b".
puts "\n#9 ---"
puts hash_1[:b]
puts "But hash_1[\"b\"] gives an error because b is a symbol, not a string"

#10. Add to this hash the key:value pair {e:5}
puts "\n#10 ---"
hash_1[:e] = 5
puts hash_1

#13. Remove all key:value pairs whose value is less than 3.5
puts "\n#11 ---"
hash_1.delete_if { |k,v| v < 3.5 }
puts hash_1

#14. Can hash values be arrays? Can you have an array of hashes? (give examples)
puts "\n#12 ---"
puts "Hash values can be arrays:"
hash_3 = {a: [1,2], b: [3,4]}
puts hash_3
puts "and an array can have hashes:"
arr_c = [1, "hi", {a: 6, b: 4}]
puts arr_c

#15. Look at several Rails/Ruby online API sources and say which one your like best and why.
puts "\n#13 ---"