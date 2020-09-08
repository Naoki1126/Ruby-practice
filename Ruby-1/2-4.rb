p "10,20,30,40,50".split(",")

@a = "aaa-bbb-ccc-ddd-eee-fff-ggg-hhh-iii-jjj"
@a = @a.split("-")

@a.each_with_index do |key,value|
    puts "key#{key},value#{value}"
end

#index ()内に検索文字列　インデックス番号を返す
puts [1,2,3,4].index(3)

puts Time.now

array = Array.new
p array

hairetsu = []


puts @a.size
puts @a[1]

@a.each do |b|
     hairetsu = hairetsu.push(b)
     if b == "bbb"
        sleep(5)
     end
end

puts array.size

puts hairetsu