class ShakeShop
  def initialize
    @milkshake = [ ]
  end

  def add_MilkShake(milkshake)
    @milkshake.push(milkshake)
  end

  def show_milkshakes
    puts milkshake
  end
end
