require "date"

@birthday1 = Date.new(1990, 10, 2)
@today1 = Date.today
@birthday2 = Date.new(1990, 10, 2).strftime("%Y%m%d").to_i
@today2 = Date.today.strftime("%Y%m%d").to_i
@age = (@today2 - @birthday2) / 10000
puts "答えは29歳と11ヶ月"
 puts "birthday1--#{@birthday1}"
 puts "today1--#{@today1}"
 puts "birthday2--#{@birthday2}"
 puts "today2--#{@today2}"
 puts "today1-birthday1 = #{@today1 - @birthday1}"
 puts "today2-birthday2 = #{@today2 - @birthday2}"
 puts "today2 - birthday2 / 12 = #{(@today2 - @birthday2) / 12}"
 puts "today1 - birthday1 / 12 = #{(10934.to_f) / (365.to_f)}"
# puts "今日と誕生日の差の日数1#{(@today1 - @birthday1)}"
puts "年齢#{@age}"

puts "today1.yaer = #{@today1.year}"
puts "birthday1.year = #{@birthday1.year}"
puts "today1.month = #{@today1.month}"
puts "birthday1.month = #{@birthday1.month}"
puts "(today1.month - birthday1.month = #{@today1.month - @birthday1.month}"
@month2 = (@today2 - @birthday2)
puts @month2

puts @month2 * 12


@birthday3 = Date.new(1990, 10, 2)
@today3 = Date.today
@difference3 = @today3 - @birthday3
@difference3_string = @difference3.to_s
@difference3_slice = @difference3_string.slice(-2..-1)

# @reverse_strf = Date.strptime(@difference3, '%Y%m%d')
 puts "@today3 - @birthday3 = #{@difference3}"
 puts @difference3.kind_of?(String)
 puts @difference3.kind_of?(Integer)
 puts @difference3.kind_of?(Float)
 puts @difference3.kind_of?(Date)
 puts @difference3.kind_of?(Bignum)
 puts @difference3.kind_of?(Numeric)
 puts @difference3.kind_of?(Time)

 puts @difference3_string
 puts @difference3_slice