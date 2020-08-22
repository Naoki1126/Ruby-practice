def fizz_buz(number)
	if number % 15 == 0
		puts 'Fizz_Buzz'
	elsif number % 3 == 0
		puts 'Fizz'
	elsif number % 5 == 0
		puts 'Buzz'
	else
		number.to_s
	end
end
puts '何回繰り返しますか?'
i = gets.to_i

puts "#{i}回繰り返します"
m = 1
while m <= i
	

	puts "#{m}回目"
	puts '数字を入力してください'
	n = gets.to_i
	puts fizz_buz(n)
	m +=1
end
puts '処理を終了します'

