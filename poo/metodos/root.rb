class Coche
  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end

  # Método público
  def mostrar_informacion
    puts "Marca: #{@marca}, Modelo: #{@modelo}"
    mostrar_numero_chasis
  end

  private

  # Método privado
  def mostrar_numero_chasis
    puts "Número de chasis: 1234567890"
  end
end

coche = Coche.new("Toyota", "Corolla")
coche.mostrar_informacion
# Output:
# Marca: Toyota, Modelo: Corolla
# Número de chasis: 1234567890

coche.mostrar_numero_chasis
# Output: NoMethodError (private method `mostrar_numero_chasis' called for ...)

class Persona
  def initialize(nombre)
    @nombre = nombre
  end
  
  def saluda_a(otra_persona)
    puts "Hola #{otra_persona.nombre}"
  end

  private

  def nombre
    @nombre
  end
end

juan = Persona.new("Juan")
pepe = Persona.new("Pepe")

juan.saluda_a(pepe) # Error! No podemos acceder a `nombre` en `pepe` porque es un método privado.

class Persona
  def initialize(nombre)
    @nombre = nombre
  end
  
  def saluda_a(otra_persona)
    puts "Hola #{otra_persona.nombre}"
  end

  protected

  def nombre
    @nombre
  end
end

juan = Persona.new("Juan")
pepe = Persona.new("Pepe")

juan.saluda_a(pepe) # Output: Hola Pepe
