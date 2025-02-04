```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    if new_value.is_a?(Numeric)
      @value = new_value
    else
      raise TypeError, "Value must be a number"
    end
    puts "Value updated to: #{@value}"
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10
my_object.value = 20 # Output: Value updated to: 20
puts my_object.value  # Output: 20

begin
  my_object.value = "hello"
rescue TypeError => e
  puts e.message # Output: Value must be a number
end
```