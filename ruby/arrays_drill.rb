def build_array(item1, item2, item3)
	result = []
	result += [item1, item2, item3]
end

def add_to_array(arr, item1)
	arr << item1
end



new_array = []
p new_array

new_array += [1, 2, 3, 4, 5]
p new_array

new_array.delete_at(2)
p new_array

new_array.insert(2, 6)
p new_array

new_array.shift
p new_array
puts "Our array includes the number 6:#{new_array.include?(6)}"

second_array = ["cat", "dog", "mouse"]
sum_of_arrays = new_array + second_array
p sum_of_arrays

p build_array(1, "two", nil)
p add_to_array([1, 2, 3] 5)
p add_to_array(["a", "b", "c", 1,2], 3)
