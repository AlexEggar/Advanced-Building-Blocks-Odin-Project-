def substring(input)


dictionary = []
frequency = Hash.new(0)


words = input.downcase.split()

words.each do |word|

			if dictionary.include? word 
				frequency[word] += 1
					
			else 

							dictionary.push(word)  
			end
	


	
end 
puts frequency

end 

