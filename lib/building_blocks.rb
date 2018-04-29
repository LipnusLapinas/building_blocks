def caesar(input, shift)
  input = input.split("")
  letters = ('a'..'z').to_a
  new_string = []
  begin
    shift = shift.to_i
  rescue
	shift = 0
  end
  
  while shift > 26
	shift -= 26
  end
  input.each do |letter|
	new_shift = shift
	if letters.include? letter
	  if letters.index(letter) + new_shift > 25
        new_shift -= 26
      end
	  new_string.push(letters[letters.index(letter) + new_shift])
	elsif letters.include? letter.downcase
	  if letters.index(letter.downcase) + new_shift > 25
        new_shift -= 26
      end
	  new_string.push(letters[letters.index(letter.downcase) + new_shift].upcase)
	else
	  new_string.push(letter)
	end
  end
  puts new_string.join
  new_string.join
end
