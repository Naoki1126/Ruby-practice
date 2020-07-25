def fizz_buzz(number)
	if number % 15 == 0
		puts "fizz_buzz"
	elsif number % 3 ==0
		puts "Fizz"
	elsif  number % 5 == 0
		puts "Buzz"
	else  
		number.to_s 
	end

end

puts "1以上の数を入力してください"

number = gets.to_i

puts fizz_buzz(number)