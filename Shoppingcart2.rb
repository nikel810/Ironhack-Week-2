class ShoppingCart
  def initialize
      @items = []
      @initial_price = 0
  end

  def add_item(item)
      @items.push(item)
  end

  def nr_of_items
      @items.length
  end

  def checkout
    total_price = @initial_price
    @items.each do |item|
      if nr_of_items > 5
        (total_price += item.price) * 0.9
      else
        total_price += item.price
      end
    end
  end
   puts "Your total today is #{total_price}. Have a nice day!"
end

class Item 
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      price = @price
  end
end

class Houseware < Item
  attr_reader :price
  def price
      if @price > 100
        return @price * 0.95
      else 
        return @price
      end
  end
end

class Fruit < Item
  attr_reader :price
  def price
      if Date.today.saturday? || Date.today.sunday?
        return @price * 0.9
      else
        return @price
      end
  end
end

niklas_cart = ShoppingCart.new 
banana = Fruit.new("Banana", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum = Houseware.new("Vacuum Cleaner", 150)
anchovies = Fruit.new("Anchovies", 2)

niklas_cart.add_item(banana)
niklas_cart.add_item(oj)
niklas_cart.add_item(rice)
niklas_cart.add_item(vacuum)
niklas_cart.add_item(anchovies)

niklas_cart.checkout

