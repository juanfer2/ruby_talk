class Vehiculo
  def initialize(velocidad_maxima)
    @velocidad_maxima = velocidad_maxima
  end

  def mostrar_velocidad_maxima
    puts "Velocidad máxima: #{@velocidad_maxima} km/h"
  end
end

class Coche < Vehiculo
  def initialize(velocidad_maxima, marca, modelo)
    super(velocidad_maxima)
    @marca = marca
    @modelo = modelo
  end

  def mostrar_informacion
    puts "Marca: #{@marca}, Modelo: #{@modelo}"
  end
end

coche = Coche.new(180, "Toyota", "Corolla")
coche.mostrar_informacion     # Output: Marca: Toyota, Modelo: Corolla
coche.mostrar_velocidad_maxima # Output: Velocidad máxima: 180 km/h


class Animal
  def hablar
    raise NotImplementedError, "Este método debe ser implementado por las clases que heredan de Animal"
  end
end

class Pato < Animal
  def hablar
    puts "Quack!"
  end
end

class Perro < Animal
  def hablar
    puts "Woof!"
  end
end

def escuchar_hablar(animal)
  animal.hablar
end

pato = Pato.new
perro = Perro.new

escuchar_hablar(pato) # Output: Quack!
escuchar_hablar(perro) # Output: Woof!

