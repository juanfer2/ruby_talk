class Coche
  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end

  # Método de instancia
  def mostrar_informacion
    puts "Marca: #{@marca}, Modelo: #{@modelo}"
  end
end

coche = Coche.new("Toyota", "Corolla")
coche.mostrar_informacion # Output: Marca: Toyota, Modelo: Corolla

class Coche
  @@contador_coches = 0

  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
    @@contador_coches += 1
  end

  # Método de clase
  def self.numero_de_coches
    puts "Número de coches creados: #{@@contador_coches}"
  end
end

coche1 = Coche.new("Toyota", "Corolla")
coche2 = Coche.new("Honda", "Civic")
coche3 = Coche.new("Ford", "Fiesta")

Coche.numero_de_coches # Output: Número de coches creados: 3
