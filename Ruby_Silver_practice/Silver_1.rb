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
