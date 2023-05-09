class Persona
  def initialize(nombre, apellido)
    @nombre = nombre
    @apellido = apellido
  end

  # Getter para nombre
  def nombre
    @nombre
  end

  # Setter para nombre
  def nombre=(nuevo_nombre)
    @nombre = nuevo_nombre
  end

  # Getter para apellido
  def apellido
    @apellido
  end

  # Setter para apellido
  def apellido=(nuevo_apellido)
    @apellido = nuevo_apellido
  end
end

persona = Persona.new("Juan", "Pérez")
puts persona.nombre      # Output: Juan
puts persona.apellido    # Output: Pérez

persona.nombre = "José"
persona.apellido = "Ramírez"
puts persona.nombre      # Output: José
puts persona.apellido    # Output: Ramírez


class Persona
  attr_accessor :nombre, :apellido
  attr_reader :cedula, :edad
  attr_writer :direccion

  def initialize(nombre, apellido, cedula, edad)
    @nombre = nombre
    @apellido = apellido
    @cedula = cedula
    @edad = edad
  end
end

persona = Persona.new("Juan", "Pérez", "12345678", 25)
puts persona.nombre      # Output: Juan
puts persona.apellido    # Output: Pérez

persona.nombre = "José"
persona.apellido = "Ramírez"
puts persona.nombre      # Output: José
puts persona.apellido    # Output: Ramírez

puts persona.cedula # Output: 12345678
puts persona.edad # Output: 25

persona.direccion = "Calle 123, Ciudad, País"

puts persona.direccion # Output: Error
persona.edad = 26 # Output: Error
persona.cedula = 279223 # Output: Error

class Persona
  attr_accessor :nombre, :apellido
  attr_reader :cedula, :edad
  attr_writer :direccion

  def initialize(nombre, apellido, cedula, edad)
    @nombre = nombre
    @apellido = apellido
    @cedula = cedula
    @edad = edad
  end
end

persona = Persona.new("Juan", "Pérez", "12345678", 25)
persona.direccion = "Calle 123, Ciudad, País"
puts persona.direccion


