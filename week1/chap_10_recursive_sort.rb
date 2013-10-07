
def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  smallest = unsorted_array[0]
  unsorted_array.each do |element| 
    smallest = element if element[0] < smallest[0]
  end
  sorted_array << unsorted_array.delete_at(unsorted_array.index(smallest))

  recursive_sort unsorted_array, sorted_array unless unsorted_array.empty?

  sorted_array
end

unsorted = ["peach", "apple", "banana", "grape"]

puts sort unsorted