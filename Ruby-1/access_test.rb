class AccessTest
    def pub
        puts "pub is a public method."
    end

    public :pub #pubメソッドをpublicに設定(指定しなくても良い)

    def priv
        puts "priv is a private method."
    end

    private :priv # privメソッドをprivateに設定
end

access = AccessTest.new
access.pub
access.priv
