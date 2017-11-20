class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(hashdog)
    @nombre = hashdog[:nombre]
    @raza = hashdog[:raza]
    @color = hashdog[:color]
  end
end



propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
dog = Dog.new(propiedades)

puts "Mi perro #{dog.nombre} es de raza #{dog.raza} y es de color #{dog.color}"
puts "#{dog.nombre} está ladrando!"
