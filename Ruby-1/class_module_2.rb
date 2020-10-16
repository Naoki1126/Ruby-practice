class Receipt
    attr_accessor :name

    def initialize(name)
        @name = name
    end
    def output
        puts "レシート #{self.name}"
    end

    def output_test
        puts "レシート #{name}."
    end
end

test1 = Receipt.new("野菜")
test1.output
test2 = Receipt.new("コーヒー")
test2.output_test



class Train
    attr_accessor :name, :kind

    def initialize(name, kind)
      self.name = name
      self.kind = kind
    end

      def description
      puts "#{self.name}の#{self.kind}はちょーカッコいい!!"
    end
  end

  train = Train.new("ロマンスカー", "VSE")
  train.description

  class Romancecar
    def self.description
      puts "ロマンスカーのVSEはちょーカッコいい!!"
    end
  end

  Romancecar.description


class Calculation
    RAILS = "Ruby on Rails"
    def addition(a, b, c, d, e)
        puts a + b + c + d + e
    end
end

class Receipt
    VERSION = "1.0.0"
    AIUEO = "123456"
end

p Receipt::VERSION
p Calculation::RAILS
p Receipt::AIUEO