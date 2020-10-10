s = <<EOF
Hello,
Ruby
EOF
'EOF'

puts "0x90".hex #hexは文字列を16進数で解釈して整数で返す 解釈出来なければ0を返す
puts '90'
puts '80'.oct #octは文字列を8進数で解釈して整数で返す。解釈できなければ0を返す
#0bは2進数を表す

$val = 0
class Count
    def self.up
        $val = $val + 1
        $val == 3 ? true : false
    end
end

[*1..10].any? do #any?はブロックの戻り値がtrueになると繰り返しをその時点で止める
    Count.up
end
p $val

begin
    raise StandardError.new #Rubyの組み込み例外は全てStandardErrorのサブクラス
rescue => e
    puts e.class
end

ary = [1,2,3,4,5,6,7,8,9,10]
ary.delete_if{ |a| a % 2 == 0} #delete_ifはブロックの戻り値が真の要素を削除する。破壊的メソッド
p ary

ary_2 = [1,2,3,4,5,6,7,87,89,90,56,33]
ary_2.reject!{ |aa| aa % 2 == 0} #delete_ifと似ている、
p ary_2

ary_3 = [1,2,3,4,5,6,7,8,98,22,33,44,55]
p ary_3.reject{ |a| a % 2 == 0} #ブロックの結果が偽の要素を集めた配列を返す　多分　selectの逆
p ary_3

ary_4 = [1,2,3,4,5,6,7,8,9,10]
ary_4.each_slice(3) do |i| #each_slice 引数で渡した数で配列を区切る　この状態だと[1,2,3][4,5,6][7,8,9][10]
    p i
end

container = []
ary_4.each_slice(3) do |i| #container => [[1,2,3],[4,5,6],[7,8,9][10]]
    container << i
end
p container
p container.length
p container.size

h = {a: 100, b: 200}
p h.invert #ハッシュのkeyとvalueを入れ替える
h.clear #ハッシュの中身を消す破壊的メソッド
p h

arr = [1,2].product([3,4]) #=> [[1,3],[1,4],[2,3],[2,4]] productはレシーバの配列と引数の配列から1つずつ要素を取り出し新しい配列を作成。全ての配列を要素とする配列を返す。
p arr

p arr.transpose #transpose レシーバの配列から行と列を入れ替えた配列を作成する
# transpose前のarr
 arr = [
    [1,3],
    [1,4],
    [2,3],
    [2,4]
]
# transpose => [[1,1,2,2],[3,4,3,4]]

a, = (1..5).partition(&:odd?)
p a

a = [1]
a[5] = 10
p a
p a.length

#グローバル変数は$
#クラス変数は@@
#インスタンス変数は@
#定数は大文字から始まる


h = {a: 100,b: 200}
p h.class
h.each {|p| p p.class}

(1..10).each_cons(4){|arr| p arr } #selfより引数ずつ要素を取り出しプロックに渡す 配列の[3]が10になった時点で終了
(1..10).each_slice(4){|arr| p arr } #処理結果を引数の数で区切った配列にする

arr = (1..30).to_a
container = []

arr.each_cons(7) do |i|
  container << i
end
p container

p container.length

s = <<'EOF'
Hello,
Ruby
EOF

p s

a1 = "abc"
a2 = 'abc'

print a1.eql? a2 #String eql?は文字列が同じであればtrue == も同義
print a1 == a2


h = {name: "丸山",prefecture: "東京"}
p h
p h.invert #invert キーと値を入れ替える

p h.fetch(:name) #引数のキーでvalueを検索する

v1 = 1 - 1 == 0
#v1 true
v2 = v1 || raise(RuntimeError)

puts v2 && false

10.times{|d| print d == 3..d == 5 ? "T" : "F" }

def hoge(n)
    if n != 3
      "hello"
    elsif n == 5
      "world"
    end
end
  
  str = [0]
  str1 = [1,2]
  str.concat str1


h = Hash.new("default value") #defaultをセットはしているが pメソッドなどでは出力できない
h[:a]
h[:b] = 100

p h
p h[:a]
p h[:b]

hoge = *"a" #arrayクラスになる
p hoge
puts hoge.class

(1..10).each
.reverse_each
.each do |i|
  puts i
end

(1..10).each.
reverse_each.
each do |i|
  puts i
end

(1..10).each \
.reverse_each \
.each do |i|
  puts i
end


(1..10).to_a.each.
reverse_each.
each do |i|
  puts i
end

str = "abcdefghijk"
p str[2,4] #第一引数が開始位置、第二引数が取り出す個数

p str[2] #第一引数のみの指定だと、開始位置より１文字だけ取り出す


s = ["one", "two", "three"]
p s
p s.shift #配列の最初の要素を破壊的に取り出す
p s.shift #同上
p s.unshift("dummy") #配列の最初に引数の値を破壊的に追加する
p s.push "four" #配列の末尾に引数を破壊的に挿入する
p s

p "90"
p 0xFF #16進数を10進数に変換
p 7.to_s(3) #selfを3進数に変換
# "7".binary Stringにbinaryメソッドは存在しない 

a = [1,2,3,4]
p a[2,1] #第一引数に取り出したいインデックス番号 第二引数に取り出したい要素数
p a[2,2]

p %|apple banana orange| 
p %w|apple banana orange| #配列の作成
p %w(apple banana orange) #配列の作成
a = [2,3,4,5].map { |num| num * 2}
p a
p (1..3).map{ |num| num * 2}

s = ["one", "two", "three"]
p s
p s.pop #selfの末尾から1要素を破壊的に取り出す
p s.pop #同上
p s.unshift #引数がある場合はselfの先頭に破壊的に要素を追加するがない場合は何もしない
p s.push "four" #selfの末尾に要素を破壊的に代入する
p s

s = <<-EOF #インデントを加えた書き方。ただし<<識別子とした場合はインデントを加えることは出来ずエラーとなる
      Hello,
      Ruby
      EOF

p s

str = "Liberty Fish   \r\n" #stripは文字列の先頭と末尾の空白文字(\t\r\n\f\v)を取り除く、ただし破壊的メソッドではない。
str.strip
p str

a, b = 0 #a => 0, b => nil
c, a = 1 #c => 1, a => nil
a, d = 1, 2 #a => 1, d => 2
b, c = 3 #b => 3, c => nil

p [a, b, c, d] #[1,3,nil,2]

a = "Ruby"
b = " on Rails"
p a.concat b #concatは破壊的メソッド
p a.reverse #reverseは破壊的メソッドではない
p a
p a.index("R", 1) #indexメソッドは第一引数が左から数えて何番目にあるかを数字で返す。ただし第二引数がある場合は指定した数から数え始める

puts Time.now + 3600 #単位は秒

a1 = [1,2,3]
a2 = [4,2,3]

p a1 | a2 #重複要素を取り除く => [1,2,3,4]

array = Array.new(3){"Apple"} #引数に整数を入れるとその長さの配列を作成、{}内のオブジェクトをセットする
array[0].upcase! #upcase! 大文字にする破壊的メソッド

p array
p a[1].equal? a[2] #ただし作成した段階でオブジェクトIDは別になる

hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}

p hash.values_at(:price, :tax) #value_atメソッドは可変長引数を取る。返り値はvalueの配列
p hash.[](:price) #引数は一つまで
p hash.values #引数を受け付けない
p hash.key(:price) #引数は一つまで value値を入れることによりkeyを返す。存在しないvalueを指定した場合nilが返る

x = 1
y = 1.0

print x == y #=> 数値として等しいのでtrue 
print x.eql? y #=> オブジェクトのクラスが違うためFalse
print x.equal? y #=> 異なるオブジェクトIDのため False
print x.equal?(1) #=> 1はどこで参照しても同じオブジェクトIDなのでtrueになる