module Saludable
  def saludar
    puts "¡Hola!"
  end
end

class Persona
  include Saludable
end

persona = Persona.new
persona.saludar # Output: ¡Hola!

module Despedible
  def despedir
    puts "¡Adiós!"
  end
end

class Persona
  extend Despedible
end

Persona.despedir # Output: ¡Adiós!

module Ruidoso
  def hablar
    puts "¡Estoy hablando muy fuerte!"
  end
end

class Persona
  prepend Ruidoso

  def hablar
    puts "Estoy hablando normalmente."
  end
end

persona = Persona.new
persona.hablar # Output: ¡Estoy hablando muy fuerte!
