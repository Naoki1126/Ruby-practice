# ary = Array.new
# p ary

# p ary.is_a?(Array)


class Receipt #クラス名は必ず大文字
    def initialize(name) #newメソッド使用時にこのオブジェクトが呼ばれる、引数がそのまま渡される
        @name = name    #変数の初期化、引数nameを@nameに代入する (インスタンス変数はメソッド定義を超えて使用出来る)
        @lines = []     
    end

    def lines=(lines)#インスタンス変数をclass外から参照できないため
        @lines = lines
    end

    def calc
        total = 0
        @lines.each do |line|
            total += line[:price] * line[:num]
        end
        total
    end

    def output
        puts "レシート #{@name}"
        @lines.each do |line|
            puts "#{line[:name]} #{line[:price]}円 x #{line[:num]}"
        end

        puts "合計金額：#{calc}円"
    end
end

r = Receipt.new("ストアA")
r.lines = [{name: "卵",price: 200, num: 1},
            {name: "大根", price: 100, num: 2}]
r.output