# 0x は16進数を現すプレフィックス hexは文字列を16進数で解釈して、整数で返す。解釈できない場合は0を返す
# 0bは2進数を現すプレフィックス
#String.octは文字列を8進数で解釈して整数で返す。解釈できない場合は0を返す。

#method_defind?(:xx) selfにメソッドが存在するかを返す

def hoge(step = 1)
    current = 0
    Proc.new {
      current += step
    }
  end
  
  p1 = hoge
  p2 = hoge(2)
  
  p p1.call
  p p1.call
  p p1.call
  p p2.call
  p p2.call
  
  p p2.call

# ブロック do~ end または {~} と書かれるもの　ブロックはオブジェクトでは無い
# プロック ブロックをオブジェクト化したもの
# call プロックを呼び出すためのもの
# &引数名としてメソッドを定義するとProcオブジェクトになり、メソッドの中でプロックを実行する

X = 10
Y = X < 10 ? "C" : "D"
puts Y

h = Hash[]
p h

str = "Liberty Fish   \r\n"
str.chop
p str

10.times{|d| print d == 3..d == 5 ? "T" : "F" }

str = "abcdefghijk"
p str[2...4]

X = 10
X = X < 10 ? "C" : "D"
puts X

# a = "Ruby"
# b = " on Rails"
# a.append b append
# a.reverse
# p a.index("R", 1)

a = "Ruby"
b = " on Rails"
p a.concat b
p a.reverse
p a
p a.index("R", 1)

# io = File.open('list.txt')
# while not io.eof?
#    io.readlines
#    io.seek(0, IO::SEEK_CUR)
#    p io.readlines
#  end