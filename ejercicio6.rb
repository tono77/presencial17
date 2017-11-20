class Product
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

  def average
    (@large + @medium + @small + @xsmall)/4
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

p products_list
# [#<Product:0x007fb74494fa40 @name="Polera", @large="10990", @medium="7990", @small="4990", @xsmall="2990\n">, #<Product:0x007fb74494f770 @name="Jeans", @large="14990", @medium="10990", @small="7990", @xsmall="5990\n">, #<Product:0x007fb74494f450 @name="Poleron", @large="12990", @medium="8990", @small="5990", @xsmall="3990\n">, #<Product:0x007fb74494f130 @name="Chaleco", @large="11990", @medium="8990", @small="6990", @xsmall="4990\n">, #<Product:0x007fb74494ef00 @name="Parka", @large="19990", @medium="14990", @small=" 11990", @xsmall="9990\n">]

#  products_list << Product.new(*ls).average => [6740, 9990, 7990, 8240, 14240]
