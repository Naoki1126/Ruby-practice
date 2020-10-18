# File.open("testtext.txt") do |file|
#     while line = file.gets
    
#     end
# end

# text = "Hello, Ruby!\n"
# File.write("hello.txt",text) #=> hello.txtファイルにtext変数の中身を書き込み
# p File.read("hello.txt") #=> hello.txtを出力
# File.write("hello.txt","!",5)　
# p File.read("hello.txt")

# data = "何かのバイナリモード"
# File.binwrite("binary.dat", data)
# p File.read("binary.dat")

io.each_line do |line|
    line.chomp!
end
