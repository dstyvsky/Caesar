puts "Please enter a sentence to encode"
sentence = gets.chomp

puts "Please enter a key"
key = gets.chomp

letters = sentence.split('')
key = key.to_i
while key > 26 do
	key -= 26
end
tkey = 0


letters.each do |x| 
	tkey = key
	if x.ord == 32  
		(print x)
	else
		if ((x.ord + key > 122) && (x.ord + key < (122+26))) || ((x.ord + key > 90) && (x.ord + key < (90+26)))
			tkey -= 26
		end

		(print (x.ord + tkey).chr)
	end
end

puts ""
