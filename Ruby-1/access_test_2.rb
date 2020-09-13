class AccessTest
    public #引数を指定しなければ、
           #これ以降に定義したメソッドはpublicvになる

    def pub
        puts "pub is a public method."
    end


    private #これ以降に定義したメソッドはprivateになる

    def priv
        puts "priv is a private method."
    end

end


