#Ruby Silver 対策

#compact 配列、ハッシュからnilを取り除く！破壊的あり 変更が既に行われたものに使うとnilになる
ary = [1,nil,2,nil,3,nil]
p ary.compact
p ary.compact!
p ary.compact!
hash = {a:1, b:nil, c:3}
p hash
p hash.compact
p hash.compact!
p hash.compact!

#select 条件にあったもので新しい配列を作成する
p 100.downto(90).select{ |x| x%2==0}

#reject selectの逆。falseの要素で配列を作成する


#find/detect {}ブロック内の式がtrueになった最初の要素を検索して返す
p [1,2,3,4,5,6,6,7,7,7,8].find { |n| n % 3 == 0}

#grep 引数にマッチする要素だけを抽出し、配列にする
p ['a1','1aa','22','aa','bb'].grep(/[0-9]/)

#collect  配列の要素毎にブロックの処理結果を取得できる
ary2 = [1,2,3,4,4,5,6]
p ary2.collect{ |ary| ary * 2}
p ary2.collect!{ |ary| ary * 2}
p ary2.collect!{ |ary| ary * 2}

#map 配列の要素毎のブロックの処理結果を返す
#全てにおいブロックを実行するため条件をブロックにするとtrueかfalseが変える（新たな配列を作成するため？）
ary3 = [1,2,3,4,5,56,6,6]
ary4 = ary3.map { |ary| ary * 2 }
p ary3.map { |ary| ary % 2 == 0}
p ary4

#flatten ハッシュに対し、全てのキーと値を配列にして返す
#levelを指定することで指定されたレベルまでに平坦化させる

a = {1=> "one",2 => [2,"two"],3 => "three"}
p a.flatten
p a.flatten(2)
p a.flatten(1)
p a.flatten(0)
p a.flatten(-1)
p a.flatten(-2)

#join 配列の要素を結合して一つの文字列としたい場合に使う 引数を区切り文字として結合する
ary = ["gse","vse","mse"]
p ary.join
p ary.join("/")


#ヒアドキュメント 文字列をプログラミングに埋め込むためのもの 改行を容易に差し込める
#<< を仕様 <<-EOFで始まりEOFで終了or EOS or 一致してればなんでも良い
#改行文字/nが差し込まれる
p <<-EOF
ruby
python
php
java
EOF

language = "ruby"
p <<"EOF"
#{language}
python
java
c
c#
EOF

#メソッドチェーン ヒアドキュメン内の文字列に対してメソッドを一気に実行することができる
p <<-EOF.upcase
ruby
pytyon
java
EOF

p <<"EOF".chop
ruby
orcle
php
EOF

p <<"EOF".chomp
ruby
php
sss
EOF

#閉じるための識別子にインデントをいれるとエラーになる

#clear 配列の中身もしくは文字列を消す
ary = ['aaa','bbb','ccc','ddd','eee']
p ary.clear
ary = "1111"
p ary.clear

#replace オブジェクトを完全に変更、gsubのような部分置換はできない 破壊的メソッド
str = "abcdeg"
p str.gsub("ab","cc")
p str.replace("aiuena")
p str

#nil? 変数の値がnilの場合にtrue
#empty? 変数の値が空白であればtrue nilとの違いは値が入っているということ
#blank? nil? empty? のどちらかがtrueになる場合にtrueになる
#present? 値が入っていればtrueになる
#exclude? 値が入っていなければtrueになる

ary= [1,3,5,7,9]
# インデックス番号の指定は..で範囲指定することができる
p ary[0..2]
p ary[0..4]

#slice 引数に左から数えた数を入れることで文字を取り出す 一番左は0
str = "abcdefghijkl"
p str.slice(0)
p str.slice(3)
p str.slice(3..6) #範囲指定が可能 指定範囲の数の文字は出力される。
p str.slice(/b.*h/) #正規表現での指定も可能
p str.slice(0,3) #第二引数は取り出したい文字数を指定する(length)
p str.slice(0,5)

#配列も同様
#破壊的に処理した後に出力すると指定した部分が消えたものが出力される
ary = [12,21,32,45,65]
p ary.slice(2)
p ary.slice(1..2)
ary.slice!(1..2)
p ary

#chomp  行末の改行文字のみ削除する
#chop 行末の文字一文字を削除する、ただし改行文字の場合は2文字とも削除する


p "aaaaaaaaab".chop
p "aaaaaaa\r"
p "aaaaaaa\r\n"

#File
# w 書き込みモード 既存のファイルがある時は中身を空にする
# w+ 読み書きモード 既存ファイルの中身はからになる
#r 読み込みモード
#r+ 読み書きモード ファイルの読み込み書き込みは分の先頭から
#a 追記モード既存のファイルの文末に入力内容を追記する
#a+ 読み書きモード ファイルの読み込み位置は先頭に、書き込み位置は常に末尾になる
#明示的に指定しない場合rモードになる

#gets ターミナルが入力待ちになる
#read 名の通りファイルの読み込み、引数で読み込みの長さを指定
#readlines ファイルを全て読み込んで要素に分けた配列にして返す
#ファイルポインターをファイルの先頭に移動する

#演算子を配列同士に用いることができる 配列演算子
ary1 = [1,2,3,4,5,6,7,8,9,10]
ary2 = [5,6,7,8,9,10,11,12]

p ary1-ary2
p ary1 & ary2
p ary1 | ary2
p ary1 + ary2

#正規表現
# * 0
# + 1
# ? 0 or 1
# {n} n
# {n,} >=n
# {,n} <=n
# {n,m} n以上m未満
# . ワイルドカード 改行以外の任意の文字列を表す
# .+ .* など幅広く使える
# [] いつくかの文字列の中
# [^]マッチしない
# ^ 行頭文字
# $ 行末文字
# \w 単語を構成する文字
# \W 単語を構成しない文字

#定数 定数名の先頭を大文字にする 再代入は基本的に禁止。warningが発生するが、再代入することもできる
Greeting = "Hello Ruby"
Greeting = "Hi Ruby"
p Greeting

#File.join 定数FILE::SEPARATER"/"を使って文字列を結合する

#encoding.name 文字コードの出力？
p "rubyaaaaaa".encoding.name

#has_key?(:) 指定したハッシュのキーが存在しているかの判別
#has_key?("") incrude?() menber?() key?()も同じ意味
hash = {"nz" => "New Zealand","ru" => "Russia", "ar" => "argentina"}
hash2 = {nz: "New Zealand", ru: "Russia", ar: "argentina"}
p hash.has_key?("nz")
p hash2.has_key?("nz")
p hash2.include?(:nz)
p hash2.key?(:nz)
p hash2.member?(:nz)
#省略記法でも同じ結果が返るが、省略記法を""では返せない

#.superclass 明示的に指定すると親のクラスが変えるが、superclass.superclassだとObjectが返る

#match 正規表現にヒットした文字列を返す
#scan 正規表現にヒットしたものを新たな配列にして格納する
str = "aaa bbb ccc ddd eee fff"
s = "To be or not to be, that is the question."
hash = Hash.new(0)
s.scan(/\w+/){ |i| hash[i] += 1}
p hash

p hash["be"]

#integer.chr 数字コードに対応する１文字の文字列を返す
#ord 文字コードに対応する数字を返す
#引数を指定することで、明示的に該当コードに対応する結果を返すことができる
p "A".ord
p 65.chr

# ||= 変数の値がnilだった場合に右辺を代入して初期化してくれる nilでない時には代入しない
#falseの時にも代入される

#<=> 左辺が大きければ1 右辺が大きければ-1 等しければ0

#配列で末尾に破壊的に値を代入する

#:: 定数を呼び出すことができる
class Abcd
    DZ = "aaa"
end

p Abcd::DZ

# ..範囲演算子 (0..10).to_a == [0,1,2,3,4,5,6,7,8,9,10]
# ... (0...10).to_a [0,1,2,3,4,5,6,7,8,9]

ary= []
#演算子は左から右へ評価されるのでこの時点で1が入る
#式の真偽が決定すると残りの式は評価しない
#falseとnil以外は真
ary << 1 && false
p ary
#||演算子に関しては左で処理が終われば右は評価されない
true || ary << 2
p ary
#右も評価の対象になるが&条件のため代入されない
false && ary << 3
p ary
false || ary << 4
p ary

#文字列であっても*は回数繰り返すという意味に
#ただし、**の方が優先度が高いため、**2を行った時点で処理は終了する
p "foo" * 2 ** 2

#dup clone オブジェクトを複製するが、階層構造になっている場合破壊的メソッドを用いると元のオブジェクトまで変更する
#コピー元を変更した場合にもコピー先オブジェクトは変更されてしまう

str = ["aaa","bbb"]
str2 = str.dup
str2.first.gsub!("aaa","bbb")
p str
p str2

str2.first.gsub!("bbb","ccc")
p str
p str2

#ファイルの読み込み IO.gets Io.each IO.each_line ファイルオブジェクトから１行ずつ読み込む

#arrayClassはObjectクラスを継承しているため、メソッドの出力はできる。配列の数字に意味はない
class Object
    def greeting
        print "How are you?\n"
    end
end

[1,2].greeting
[0].greeting
[1,2,3].greeting

#Dir クラス Directoriの操作クラス
#mkdir chdir rmdir exist? などがある

text = "100,200,300,400,5900"
p text.split(",")
p text.split(",").join("/n")

#eql? 文字列が同じ場合
#equal? 参照先が同じ場合
a = "foo"
b = "foo"

p a.eql?(b)
p a.equal?(b)

a = b
p a.equal?(b)

#xx ? yy : zz 三項演算子 if xx then 
