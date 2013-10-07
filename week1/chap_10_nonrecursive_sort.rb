unsorted_list = ["peach", "Art", "apple", "banana", "Bread", "grape"]
sorted_list = []

while !unsorted_list.empty?
  smallest = unsorted_list[0]
  unsorted_list.each do |element| 
    smallest = element if element.downcase < smallest.downcase
  end
  sorted_list << unsorted_list.delete_at(unsorted_list.index(smallest))
end

puts sorted_list