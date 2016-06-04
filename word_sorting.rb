array = 'I want to sort this string alphabetically'
new_array = array.downcase
new_array.split(' ').sort { |a, b| [a] <=> [b] }
