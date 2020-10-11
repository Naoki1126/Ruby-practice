require 'date'

d = Date.new(2015, 1, 5)
puts d.strftime("%x")
p d.strftime("%m/%d/%Y")
p d.strftime("%m/%D/%y")
p d.strftime("%M/%d/%y")

# 出力結果
#01/05/15

# %x	日付(%m/%d/%y)
# %m	月を表す数字(01-12)
# %M	分(00-59)
# %d	日(01-31)
# %D	日付(%m/%d/%y)
# %y	西暦の下2桁(00-99)
# %Y	西暦を表す数(9999)
# %F    日付(%Y-%m-%d)
p "Hello%d" % 5 #　%dに引数の数を代入する

#method_defined? クラスに対してメソッドの存在を確認する(メソッドが有効かどうか)
# to_h Stringにto_hというメソッドは存在しない
# hoge = "a".to_h　
puts "hoge".class

#StandardErrorを継承しないクラスのインスタンスをraiseメソッドの引数に指定すると、
#TypeErrorが発生し次のメッセージが表示される。
#exception class/object expected

#raise ['Error Message']

p Date.today.to_s
p Date.today
p Date.today.strftime('%y-%m-%d')
p Date.today.strftime("%Y-%m-%d")


#Hashクラス破壊的メソッド一覧

# メソッド	説明
# []=	キーに対応する値を置き換えます。
# delete	キーを削除します。
# reject!	キーと値を引数としてブロックで評価した結果が真である要素を削除します。
# delete_if	reject!の別名です。
# replace	ハッシュの内容を引数の内容で置き換えます。
# shift	ハッシュからキーが追加された順番で要素を取り除きます。取り除いた要素は [key, value]形式の配列で返します。
# merge!	selfと引数のハッシュの内容をマージします。
# update	merge!の別名です。
# clear	ハッシュの中身を空にします。

h = {aa: "124",bb: '2222'}
p h
h[:aa].replace("aaa")
p h
p h.shift

h1 = {cc: '11111',dd:'222222'}
p h.merge! h1

p [1, 2, 3].inject{|x, y| x + y ** 2} rescue p $!
# 1 = 0 + 1 ** 2 xには戻り値　yには引数　
# 5 = 1 + 2 ** 2
# 14 = 5 + 3 ** 2

p [1, 2, 3].inject(1){|x, y| x + y ** 2} rescue p $!
#引数はXの初期値を現す

a, = (1..5).partition(&:odd?) #partition グループの値が真か偽かを判別し、それぞれに分けた配列を作成する ,= 真の要素のみ代入される
p a

def bar(n)
    puts n
end

bar 5

def bar(n)
    puts n
end
bar (10)

def bar(*n1, n2)
    puts n1
    puts n2
end
bar 5, 6, 7, 8

# def bar(*n1, n2, *n3) 可変長引数を二つ設定することはできない
#     puts n1
#     puts n2
#   end
# bar 5, 6, 7, 8

(10..15).to_a.map.with_index(1) do |elem, i|
    puts i
    puts elem
end
#with_index() 引数を渡すとiの初期値は引数の数になる。引数を与えないと0からスタート


(10...15).to_a.map.with_index do |elem, i|
    puts i
    puts elem
end

#(...)最後の数を含めない (..)最後の数を含める

X = 10 #定数に再代入しようとすると警告が出る。x < 10 ? "C" : "D" if x < 10 "C" else "D"と同じ意味
Y = X < 10 ? "C" : "D"
puts Y

h = Hash[]
p h

p "Hello" % 5 #識別子が無い場合はそのまま出力される
x = 0
1.step(5,1) do |i| #step self(1)からstep(1)ずつ加算しlimit(5)までをブロックに渡す
    p x
    x += 1
    p i
end
puts x

#1 += 1
#2 += 1
#3 += 1
#4 += 1

hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
p hash.member?("apple") #キーが存在しているかどうか

hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
hash.update({"grape" => "juice"})
p hash

hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
p hash.to_a #配列に変換


# strip	文字列の先頭と末尾の空白文字(\t\r\n\f\v)を取り除きます。
# strip!	文字列の先頭と末尾の空白文字(\t\r\n\f\v)を破壊的に取り除きます。
# chomp	末尾から改行コードを取り除きます。
# chop	末尾の文字を取り除きます。ただし、文字列の末尾が"\r\n"であれば、2文字とも取り除きます。

str = "Liberty Fish   \r\n"
p str.chop
p str

p str.strip
p str.chomp
str ="abcdefghijklml"
p str.chop

# def hoge
#     x = 10
#     Y = x < 10 ? "C" : "D"
#     puts Y
# end
# hoge

# メソッドの中で定数は定義出来ないからエラーが出る

# s = <<EOF
#     Hello,
#     Ruby
#     EOF
# p s

#インデントを加える場合、<<-識別子とする、これが無いとエラーになる。
#インデントを排除する場合は<<~識別子を使用する

s = <<'EOF'
Hello,
Ruby
'EOF'
EOF

p s

h = {a: 100, b: 200}
h.delete(:a)
p h

p s = ["one", "two", "three"]
p s.pop
p s
p s.pop
p s
p s.unshift
p s.push "four"
p s

def hoge
    x = 0
    (1...5).each do |i| #4,5,0
      x += 1
      p i
    end
    x
end
puts hoge

str = "Liberty Fish   \r\n"
p str.strip 
p str

# find_all, select	各要素に対してブロックを評価した結果が、真である要素の配列を作成し返します
# detect	要素に対してブロックを評価した結果が、最初に真になった要素を返します
# collect, map	各要素に対してブロックを評価した結果を配列に格納し返します

x = [1,2,3,4,5,6,7,8,9,10]
p x.find_all{|num| num % 2 == 0}
p x.select{ |num| num % 2 == 0}
p x.detect{ |num| num % 2 == 0}
p x.collect{ |num| num * 2}

puts '10'.oct #文字列を8進数として解釈し返す
puts "110" #文字列をそのまま返します
puts "110".to_i(2) #.to_i(2)は文字列をn進数文字列として解釈して整数を返す

puts Date.today.strftime("%F")

$val = 0

class Count
  def self.up
    $val = $val + 1
    $val == 3 ? true : false
  end
end
p $val
[*1..10].select do
  Count.up
end

p $val


arr = [["apple"],["banana"],["orange"]].flatten
p arr
arr.each do |i|
  puts i
end
