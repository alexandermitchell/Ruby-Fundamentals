def happy_number?(num, history = [])
	my_array = num.to_s.split("").map { |x| x.to_i }
	#puts "my_array: #{my_array}"
	new_array = my_array.collect { |x| x**2 }
	#puts "new_array: #{new_array}"
	alex = new_array.inject { |sum, x| sum + x }
	#puts "alex: #{alex}"
	if alex == 1 
		puts "This is a happy number"
	else 
		#puts "history: #{history.inspect}"
		if history.include?(alex)
			puts "This is not a happy number"
		else
			history << alex
			happy_number?(alex, history)
		end
	end 
end

puts "Enter a number:"
print "> "
num = gets.chomp
happy_number?(num)




