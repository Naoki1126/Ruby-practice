class Menu
  attr_accessor :name
  attr_accessor :price
  
  # infoメソッドを定義してください
  def info
    puts "料理名と値段が表示されます"
  end
end

menu1 = Menu.new
menu1.name = "ピザ"
menu1.price = 800
puts menu1.info
# menu1に対してinfoメソッドを呼び出してください

