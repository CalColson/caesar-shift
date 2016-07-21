def stock_picker(day_prices)
	max_profit = 0
	best_days = "No profit can be made"

	day_prices.each_with_index do |price, i|
		day_max = 0

		day_prices.each_with_index do |other_price, j|
			if j > i
				diff = other_price - price
				if diff > day_max
					day_max = diff
					max_j = j
				end
			end

			if day_max > max_profit
				max_profit = day_max 
				best_days = [i, max_j, max_profit]
			end
		end
	end
	best_days
end

best_days = stock_picker([17,3,6,9,15,8,6,1,10])

if String === best_days
	puts best_days
else
	puts "You should buy on #{best_days[0]} and sell on #{best_days[1]}"
	puts "You'll make a profit of $#{best_days[2]}"
end

