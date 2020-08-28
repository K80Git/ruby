# requireを使ってmenu.rbを読み込んでください
require "./ruby_5_menu"

# Menuクラスを継承したFoodクラスをつくってください
class Drink < Menu
  # amountというインスタンス変数を追加してください
  attr_accessor :amount
  
  # initializeメソッドを定義してください
  def initialize(name:,price:,amount:)
    super(name: name, price: price)
    self.amount = amount
  end
  
  def info
    return "#{self.name} #{self.price}円 (#{self.amount}mL)"
  end
end
