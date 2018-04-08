def caesar(input, shift)
	input = input.split("")
	letters = ('a'..'z').to_a
	new_string = []

	input.each do |letter|
		if letters.include? letter
			new_string.push(letters[letters.index(letter) + shift])
		elsif letters.include? letter.downcase
			new_string.push(letters[letters.index(letter.downcase) + shift].upcase)
		else
			new_string.push(letter)
		end
	end
	puts new_string.join
end

puts("String to cipher: ")
string = gets.chomp
puts("Shift? ")
shift = gets.chomp
caesar(string, shift)
