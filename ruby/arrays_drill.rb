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
#new_array.include?(6)
puts "Our array includes the number 6:#{new_array.include?(6)}"

second_array = ["cat", "dog", "mouse"]
sum_of_arrays = new_array + second_array
p sum_of_arrays
