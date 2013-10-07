unsorted_list = ["peach", "apple", "banana", "grape"]
sorted_list = []

while !unsorted_list.empty?
  smallest = unsorted_list[0]
  unsorted_list.each do |element| 
    smallest = element if element[0] < smallest[0]
  end
  sorted_list << unsorted_list.delete_at(unsorted_list.index(smallest))
end

puts sorted_list