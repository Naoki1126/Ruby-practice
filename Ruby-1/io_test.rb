3.times do |i|
    $stdout.puts "#{Random.rand}"
    $stderr.puts "#{i+1}回出力しました"
    $stdout.puts "こんにちは"
end

#io_test > test.txt
#$stdoutの値がtest.txtに書き込まれる


if $stdin.tty?
    puts "Stdin is a TTY."
else
    puts "Stdin is not a TTY."
end