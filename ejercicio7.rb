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

  def to_file
    file = File.open('nuevo_catalogo.txt','a')
    file.puts "#{@name}, #{@large}, #{@medium}, #{@small}"
    file.close
  end
end

products_list = []
data = []
file = File.open('nuevo_catalogo.txt','w')
file.close

File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls).to_file
end
