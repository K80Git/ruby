# requireを使ってmenu.rbを読み込んでください
require "./ruby_5_menu"

# Menuクラスを継承したFoodクラスをつくってください
class Food < Menu
  # calorieというインスタンス変数を追加してください
  attr_accessor :calorie
  
  # initializeメソッドを定義してください
  def initialize(name:,price:,calorie:)
    super(name: name,price: price)
    #self.name = name
    #self.price = price
    self.calorie = calorie
  end

  # infoメソッドを定義してください
  def info
    return "#{self.name} #{self.price}円 (#{self.calorie}kcal)"
  end

  # calorie_infoメソッドを定義してください
  def calorie_info
    return "#{self.name}は#{self.calorie}kcalです"
  end
end
