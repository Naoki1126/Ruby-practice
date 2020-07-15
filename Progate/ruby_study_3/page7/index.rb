def discount(price)
# 「price / 2」を戻り値として返してください
	return price / 2
end

puts "テレビがセール中です！"

# discountメソッドを呼び出し、その戻り値を変数half_priceに代入してください
half_price = discount(15000)

# 変数half_priceを用いて、「特別価格で〇〇円です」となるように出力してください
puts "特別価格で#{half_price}円です"
