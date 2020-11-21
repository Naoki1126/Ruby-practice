#File_Class オプションについて
#r(read) 読み込みモード
#w(write) 書き込みモード
#a(append) 追記書き込みモード
# +を付けることで読み書き両用モードで開くことが出来る
# file.puts 書き込みを行う
# file.read 読み込みを行う


# file = File.open("samurai.txt", "w") # samurai.txt => ファイル名 存在しないfileでもwコマンドで作成することが出来る。
# #“w” => 書き込み
# file.puts("Hello, Samurai Geeks!") #書き込みコマンド
# file.close #fileのクローズまでしっかり行う

#file open mode r (read only)

# file = File.open("samurai.txt", "r") #=> r readonly optionを指定
# puts file.read        #コンソールにファイルに書かれた内容を表示する
# file.close

# puts file.read('samurai.txt') #=> ただ単に読むだけならこのような省略記法を使うことも出来る。

#file open mode r+ (read write) 読み書き両用モード

# file = File.open("samurai.txt", "r+") 
# p file.puts file.read    # ファイルを読み込み、読み込んだ内容を文末に追加する
# file.close     

#file open mode w (write) 書き込みモード
#書き込み
#ファイルが存在しない場合作成する
#存在する場合上書き

# file = File.open('samurai.txt',"w")
#  file.puts "Hello Samurai!"
#  p file.puts file.size # ファイルサイズ
#  p file.puts file.atime # 最終アクセス時刻
#  p file.puts file.mtime # 最終更新時刻
# file.close

#file open mode w+ (read write) 読み書きモード

#書き込み + 読み込み
#上記のwに加え読み込みも行いたい時に使用する

# file = File.open("samurai.txt","w+")
# puts file.read       # wオプションの場合はエラーになります。
# file.puts "Hello Samurai!"
# file.puts file.size # ファイルサイズ
# file.puts file.atime # 最終アクセス時刻
# file.puts file.mtime # 最終更新時刻
# file.puts "Hello World"
# p file.puts "helloooooo"
# p file.read
# file.close

# file = File.open("samurai.txt", "a")
 
# file.puts "Hello Samurai!"
# file.puts file.size # ファイルサイズ
# file.puts file.atime # 最終アクセス時刻
# file.puts file.mtime # 最終更新時刻
# file.puts "append mode"
# file.close #ファイルを閉じる

#file open mode a+ (append write)

# データの中身に何らかの処理を加えたうえで、末尾から新たにデータを追加したい場合にこのモードを使う
# “w+”に似たような、ファイルのopenモード”a+”は、基本的にファイルへの追加書き込みモードでファイルをopenします。

# また、追加書き込みに加えて、読み込みも可能

# file = File.open("samurai.txt", "a+") 
# puts file.read        #コンソールに読み込まれた内容を表示する。
# #オプションが”a”の場合はエラーとなる。
# file.puts "Hello Samurai!"
# file.puts file.size # ファイルサイズ
# file.puts file.atime # 最終アクセス時刻
# file.puts file.mtime # 最終更新時刻
# file.close        #ファイルを閉じる

# file = open("samurai.txt")    # モード省略時は "r" でオープンされます
# print file.read(100) #100バイト読み込む
# file.close

# file = open("sample.txt", "w")
# file.puts "this is samurai"
# file.puts "engineer's "
# file.puts "blog, to go ahead."
# file.close

# file = open("sample.txt")    # モード省略時は "r" でオープンされます

# lines = file.read().split("n")
# puts lines

# number = 0
# lines.each do | line |
#   number += 1
#   puts number
#   line.chomp!
#   puts line

# end

# hash の中身をファイルに書き込む

# h = { "Sho" => 25, "Ryo" => 31, "Jho" => 18 }
# f = File.open("samurai_name_age.txt","w+")

# h.each do |name, age|
#   f.puts "#{name}: #{age}"
# end
# print f.read
# puts f.read

# f.close

h = { "Sho" => 25, "Ryo" => 31, "Jho" => 18 }
f = File.open("samurai_name_age.txt","w")
 
h.each do |name, age|
  f.puts "#{name}: #{age}"
end
 
f.close