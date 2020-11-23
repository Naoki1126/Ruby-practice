# x = 0
# [1,2,3].each do |x|
#     print x.to_s + ""
# end
# puts x

# p ?b
# p ?S

# p "12abc".to_i
# p "abc12".to_i
# p "a1b3c".to_i
# p '1a2b3c'.to_i

# a = 1,2,3 #=>Arrayクラスになる。
# p a.class
# p a.to_s #=> "[1,2,3]"
# p a.join #=> "1,2,3"
# #concat 配列同士、文字列同士の結合に使う
# p a.concat(a)
# b ="aaaaa"
# c ="ccccfcc"
# p b.concat c

# a = 1,2,3,nil
# b = 1,3,5
# c = a
# a = a.compact
# print a
# p "a"
# print c
# p "c"

#cはaを参照しているが、aの値が変わったとしてもcの値は通常変わらない ただし、破壊的メソッドを使った場合はaを参照しているcも変わる。

# a = 1,2,3,4
# b = 1,3,5,7

# p a || b #=> true,falseの評価
# p a | b #=> 和結合


# a = [1,2,3]
# b = [1,3,5]
# c = [2,3,4]

# p a + b
# p c
# p a + b - c

# a = [:a,:a,:b,:c]
# a[5] = :e
# p a
# p a.concat([:a,:b,:c]) #=>配列の結合
# p a.compact #=> 配列内よりnil要素を削除
# p a.uniq #=> 重複項目の削除
# p a #=> ただしcompactもuniqも破壊的メソッドでなく、concatのみ破壊的メソッドのため [:a, :a, :b, :c, nil, :e, :a, :b, :c]

# p %w(a b c d e f) #=> ["a", "b", "c", "d", "e", "f"]
# p %w(a, b, c, d, e, f) #=> ["a,", "b,", "c,", "d,", "e,", "f"]
# p %w("a" "b" "c") #=> ["\"a\"", "\"b\"", "\"c\""]
# p %w("a", "b", "c") #=> ["\"a\",", "\"b\",", "\"c\""]


# a = ["a","b","c"]
# b = [1,2,3]

# a.zip(b).each{ |x| print x} 
# #=>["a", 1] ["b", 2] ["c", 3]

# a.zip(b){|x| print x}
# #=>["a", 1] ["b", 2] ["c", 3]

# [a,b].zip{|x,y| p [x,y]}
# #=> [1, 2]

# [a,b].transpose.each{|x,y| print [x,y]} #=>["a", 1] ["b", 2] ["c", 3]

# s = <<EOB
# Hello, Ruby World.
# Hi, Ruby World.
# Goodbye, Ruby world.
# EOB

# p s

# p "find!find!find!find!find!find!".index("!",5) #=> 5番目から検索を開始した時に開始文字が左から何番目に存在しているかを返す。

# x = "Hello,World.\n"
# x.chop!
# x.chop!
# x.chomp!
# p x

# p "hogepiyohogehoge".slice(/o../)　#=> Oから始まる３文字を意味する

# p "abc def 123 ghi 456 aaa 22222".scan(/\d+/).length #=> scanに正規表現を渡すことで結果が配列になって返る。また、\d+ は数字で繰り返されるパターンのこと

# p "abd def 111 33 4444 rrrr iiii i12i 12ci".scan(/^[0-9].$/)
# p "abd def 111 33 4444 rrrr iiii i12i 12ci".scan(/^[0-9]*$/) => 簡単な正規表現は覚える

#  p 68.chr #=> 数字に対応する文字コードを返す。
#  p "A".ord #=>文字に対応する数字を返す。
#  p "ZZ".ord

p "HogeHOGEhoge"[/[A-Z][^A-Z]+/] #=> [A-Z]大文字A-Zにマッチ、[^A-Z]大文字A-Z以外にマッチする Hoge
p "HogeHOGEhoge"[/[a-z][^A-Z]+/] #0=> oge

# h = {"a": 1,"b": 2,"c": 3} #=> 今のバージョンであればこの打ち方でもOK
# p h


# h = {1 => "HOge", 2 => "Piyo", 3 => "fuga"}
# p h.invert

h = {1 => "hoge",2 => "piyo", 3 => "fuga"}
p h.reject {|x,y| x < 2}
