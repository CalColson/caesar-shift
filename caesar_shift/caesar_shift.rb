def caesar_cipher(message, shift)
	letters = message.split("")

	letters.each do |l|
		new_ascii = l.ord - shift

		if (l.ord.between? 65, 90)

			if new_ascii.between?(65,90)
				l = new_ascii.chr

			elsif new_ascii > 90
				diff = new_ascii - 90
				l = (64 + diff).chr

			else
				diff = 65 - new_ascii
				l = (91 - diff).chr
			end

		elsif (l.ord.between? 97, 122)

			if new_ascii.between?(97,122)
				l = new_ascii.chr

			elsif new_ascii > 122
				diff = new_ascii - 122
				l = (96 + diff).chr

			else
				diff = 97 - new_ascii
				l = (123 - diff).chr
			end
		end
		print l
	end
	puts
end

while true
	message = gets.chomp
	caesar_cipher(message, -5)	
end