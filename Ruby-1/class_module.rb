# ary = Array.new
# p ary

# p ary.is_a?(Array)


class Receipt #クラス名は必ず大文字
    #attr_reader :name #参照のみ可能にする(def name )
    #attr_writer :name 変更のみ可能にする(def name=(name))
    attr_accessor :name #参照と変更を両方可能にする

    def initialize(name) #newメソッド使用時にこのオブジェクトが呼ばれる、引数がそのまま渡される
        @name = name    #変数の初期化、引数nameを@nameに代入する (インスタンス変数はメソッド定義を超えて使用出来る)
        @lines = []     
    end

    def lines=(lines)#インスタンス変数をclass外から参照できないため
        @lines = lines #引数を受け取り、@linesに代入
    end

    def name #@nameを参照する
        @name
    end

    def name=(name) #@nameを変更する
        @name = name
    end

    def replace_name
        name = "new name" #ローカル変数への代入
        self.name = "new name" #name= メソッドの呼び出し 変更させたい時にはselfは省略しない
    def calc
        total = 0
        @lines.each do |line|
            total += line[:price] * line[:num]
        end
        total
    end

    def output
        puts "レシート #{@name}"
        puts "レシート #{self.name}"#selfはレシーバを参照、
        puts "レシート #{name}" #selfは省略可能
        @lines.each do |line|
            puts "#{line[:name]} #{line[:price]}円 x #{line[:num]}"
        end

        puts "合計金額：#{calc}円"
    end
end

r = Receipt.new("ストアA") #Recept.name はストアAになる
r2 = Receipt.new("ストアB")
r3 = Receipt.new("ストアC")
r.lines = [{name: "卵",price: 200, num: 1}, #配列の＠linesに＝この値を代入したい
            {name: "大根", price: 100, num: 2}]
r.output

p r.name
r2.name = "ストアB"#出力ではなくメソッドの呼び出しを行っている。これをすることで外部からインスタンス変数にアクセスすることができる

