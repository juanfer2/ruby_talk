
def my_method
  local_variable = 10
  puts local_variable
end

my_method
# Output: 10

class MyClass
  def initialize
    @instance_variable = "I am an instance variable"
  end

  def show_variable
    puts @instance_variable
  end
end

object = MyClass.new
object.show_variable
# Output: I am an instance variable

object = MyClass.new
object.show_variable
# Output: I am a class variable

class MyClass
  @@class_variable = "I am a class variable"

  def self.show_variable
    puts @@class_variable
  end

  def show_variable
    puts @@class_variable
  end
end

MyClass.show_variable
# Output: I am a class variable

object_1 = MyClass.new
object_1.show_variable
# Output: I am a class variable

object_2 = MyClass.new
object_2.show_variable
# Output: I am a class variable


$global_variable = "I am a global variable"

def show_variable
  puts $global_variable
end

class MyClass
  def show_variable
    puts $global_variable
  end
end

show_variable
# Output: I am a global variable

object = MyClass.new
object.show_variable
# Output: I am a global variable
