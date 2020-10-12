def hoge(n)
    if n % 3 == 0
      "hello"
    elsif n % 5 == 0
      "world"
    end
 end

p str = ''
p str.concat hoge(3) #String#concatはselfへ引数の値を結合します。selfの内容を変更します。
p str.concat hoge(5)

str = "aaaaaa"
str1 = "bbbbbbb"
str.concat str1
p str

def foo(n)
  n ** n
end

puts foo (2) * 2

puts foo(2)*2


str = "Liberty Fish   \r\n" #破壊的メソッド 文字列の末尾と空白文字を取り除く
str.strip!
p str

(10..15).to_a.map.with_index(2) do |elem, i|
  puts i
  puts elem
end

h = {a: 100, b: 200}
p h.to_a
p h.size

arr = [1,2].zip([3,4])
p arr

p (10..20).select{ |num| num % 2 == 0} #select trueになったものを返す
p (10..20).find_all{|num| num % 2 == 0}
p (10..20).reject{ |num| num % 2 == 0} #falseになったものを返す
p (10..20).find{ |num| num % 2 == 0} #trueになった最初の要素を返す
p (10..20).detect{ |num| num % 2 == 0} #trueになった最初の要素を返す

a1 = [1,2,3]
a2 = [4,2,3]

p a1 - a2
p a1 + a2
p a1 | a2
p a1 & a2

10.times{|d| print d == 3..d == 5 ? "T" : "F" }
12.times{|d| print d == 3 ..d == 7 ? "A" : "B"}

arr = Array(3){"a"}
p arr

hoge = *"hhh"
puts hoge.class


hash = {a: 100, b: 200}
p *hash #配列展開する