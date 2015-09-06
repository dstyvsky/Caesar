puts "Please enter a sentence to encode"

sentence = gets.chomp



letters = sentence.split('')

letters.each do |x| 
	x.ord == 32 ? (print x) : (print (x.ord + 1).chr)
end

puts ""
