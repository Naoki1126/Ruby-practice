module HelloModule
    VERSION = "1.0"

    def hello(name)
        puts "Hello, #{name}."
    end

     module_function :hello #helloをモジュール関数として外部から参照出来るように公開する

end

p HelloModule::VERSION
HelloModule.hello("田中")


include HelloModule
p VERSION
hello("佐藤")

module M 
    A = "aaaa"

    def meth
        "mets"
    end
end

module NN
    def seeyou(name,time)
        p "#{time}にさようなら#{name}さん"
    end
end

class C
    include HelloModule
    include M
    include NN

end


c = C.new
p c.meth
c.seeyou("丸山","11時")
p C.superclass #直接のスーパークラス

p C.include?(M) #moduleが使えるようになっているかどうか
p C.ancestors #継承関係になるクラスの一覧を取得できる。