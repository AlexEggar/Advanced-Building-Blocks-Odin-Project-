module Enumerable 

	def my_each
		x=0
		while x < self.length 
				yield(self[x])

				x+= 1
		end 
		self
	end

	def my_each_with_index
		x=0
		while x < self.length 
		
			yield(self[x], x)

			x += 1
		end
	end 

	def my_select 

		temp_array = []

		self.my_each{|x| temp_array << x if yield(x)}

		temp_array

	end 

	def my_all?
		count = 0 
		self.my_each do |x| 
			count += 1 if x == yield(x) 
			end 
			if (count == self.length)
		 	 true
		 	 else  
		 	 false 
			 end 
	end

	def my_any? 
		outcome = false
		self.my_each do |x|

		outcome = true if yield(x)



		end 
		outcome
	end 

	def my_none?
		outcome = true
		self.my_each do |x|

		outcome = false if yield(x)



		end 
		outcome
	end 

	def my_count(input=nil)
		
		count = 0 

		
			if block_given?	and input = nil 

				self.my_select do |x|
					count += 1 if x == yield(x)
					
				end 
			else 
				self.my_select do |x|
					
					count += 1 if x == input
					

					
					
				end
			end 

		count				
		end 

	 def my_map(block = nil) 
		temp_array = []
	 	
	 	if block_given? 
			self.my_each do |x|

			temp_array << yield(x)
			end
		else
	 	
		self.my_each do |x|

			temp_array << block.call(x)

				end 
		end
		temp_array
	end 



	def my_inject(arg=nil)

		
		if arg == nil
			arg = self.first
		end

		accumulator = arg
			self.my_each do |x| 

			accumulator = yield(accumulator,x)

			end 
	return accumulator
	end 



end 



	def multiply_els(array)

		array.my_inject(1) do |x,y|

		x * y 
		end 	

	end 	




