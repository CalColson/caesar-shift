def substrings(string, dictionary)
	frequencies = Hash.new(0)
	string.downcase!

	words = string.split(/\b/)

	words.each do |word|
		dictionary.each do |definition|
			count = word.scan(definition).count
			frequencies[definition] += count if count > 0		
		end
	end
frequencies
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part",
	"partner","sit"]

	puts substrings(gets.chomp, dictionary) while true
