a = "Ruby"
b = " on Rails"
p a.concat b
p a.reverse!
p a.index("R", 1)
p a.index("R")
p a.index("R", 2)
p a
p a.index("R", 3)
p a.index("R", 4)
p a.index("R", 5)
p a.strip

# <実行結果>
# 3: p a.concat b #=> "Ruby on Rails"
# 4: p a.reverse! #=> "sliaR no ybuR"
# 5: p a          #=> "sliaR no ybuR"
#引数posはあくまで検索開始位置　文字列が見つかれば左からの文字数で数値は変える

str = "Liberty Fish   \r\n"
str.strip! #strip  文字列の先頭と末尾から空白文字(\t\r\n\f\v)を取り除く
p str

str1 = "Liberty Fish   \r\n"
p str1.chomp #末尾から改行コードを取り除く
p str1.chop #末尾の文字を取り除く ただし末尾が \r\nであれば2文字とも取り除く

def bar(*n1, n2)
    puts n1
  end
  
  bar 5, 6, 7, 8

str = "Liberty Fish   \r\n"
p str.strip
p str