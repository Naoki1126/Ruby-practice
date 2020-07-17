require "./menu"

class Food < Menu
  attr_accessor :calorie
  
  # infoメソッドを定義してください
  def info
    return "#{self.name} #{self.price}円(#{self.calorie}kcal)"
  end
  
  def calorie_info
    return "#{self.name}は#{self.calorie}kcalです"
  end
end
