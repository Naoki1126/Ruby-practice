def test
    yield
end
 test{puts "hoge"}

 #testメソッドを呼び出すと、呼び出したときに渡されたブロック(この場合は「puts “hoge”」)がyieldによって呼び出されています