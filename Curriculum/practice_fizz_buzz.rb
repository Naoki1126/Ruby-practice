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
puts "何回繰り返しますか?"
n = gets.to_i
puts "#{n}回繰り返します"
i = 1

while i <= n
	puts "#{i}回目"
	puts "1以上の数を入力してください"
	number = gets.to_i
	puts fizz_buzz(number)
	i += 1
end

puts "#{n}回繰り返しました。処理を終了します。"


