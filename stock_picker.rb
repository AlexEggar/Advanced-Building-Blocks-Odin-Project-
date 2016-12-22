def stock_picker(prices)


price_difference =  0 
profit = 0 
buy_date = 0 
sell_date = 0

(0..(prices.length-1)).each do |buying|
		
			((buying + 1)..prices.length-1).each do |selling| 

				puts buying 
				puts selling
				price_difference = prices[selling] - prices[buying]

				if price_difference > profit 

					profit = price_difference 
					
					buy_date = buying
					
					sell_date = selling
				 
				end
			end 
		end 

	puts "Buy on #{buy_date} and sell on #{sell_date} for a profit of #{profit}"


end

stock_picker([1,4,63,32,243,5,32])