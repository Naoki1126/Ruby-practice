# raise ['Error Message']
#例外処理

arr = [1,2].product([3,4])
p arr
#productは全ての配列要素の取り出しに対し、zipはインデックス番号が同じ要素のみ

arr1 = [1,2].zip([3,4])
p arr1

a, = (1..5).partition(&:odd?)
p a

b = (1..5).partition(&:odd?)
p b

#partitionは要素を引数の条件に合わせ分割する
#a,= となっている場合には条件に該当しない要素は無視される。

# p [1,2,3,4].map do |e| e * e end #=> <Enumerator: [1, 2, 3, 4]:map>


def hoge
    x = 0
    2.step(5,1) do |i|
      x += 1
      print i
      p "i"
      print x
      p "x"
    end
    puts x
  end
  hoge
# 2からiに代入される
#1.step(5,1)は「1から1ずつ加算し、5までの数値
#2.step(5,1)は「2から1ずつ加算し、5までの数値

# File.open('testfile_2.txt', "a+") do |f|
#     f.write("recode 1\n")
#     f.seek(0, IO::SEEK_SET)
#     f.write("recode 2\n")
#   end

p ({a: 100, b: 100}).invert
p ({a: 100, b: 200}).invert 
#invert はkeyとvalueを入れ替える。keyが重複した場合には後に定義された方が優先される。


s = <<-EOF
    Hello,
    Ruby
    EOF
p s
#ヒアドキュメントの-では空行が認識される


a = "Ruby"
b = " on Rails"
a.concat b
a.reverse
#reverseは破壊的メソッドではない
p a.index("R", 1)

require "date"

p Date.today.strftime("%F") #=> "2020-11-22"
p Date.today.strftime("%x") #=> "11/22/20"

hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}
p hash.key(100) #=> 引数にはvalue値を一つだけ指定できる。keyを引数に指定してもnilが返る。
p hash.[](:price) # 100 が表示される keyと逆
p hash.values #=>引数を指定できない valuesを全て返す

x = 1
y = 1.0

p x == y # 数値として等しいので、true。
p x.eql? y　# == がtrue && classがtrueの時にtrue xとyはintegerとfloatのためfalse
p x.equal? y # 1.0は異なるオブジェクトIDを持つので、falseになります。
p x.equal?(1)