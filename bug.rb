```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
    puts "Value updated to: #{@value}"
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10
my_object.value = 20 # Output: Value updated to: 20
puts my_object.value  # Output: 20

# Incorrect usage leading to unexpected behavior
my_object.value = "hello"
puts my_object.value # Output: hello
my_object.value = 30
puts my_object.value #Output: 30
```