# frozen_string_literal: true

# Q: How can you invoke superclass behavior?
# A: Invoke code ina  superclass explicitly by sending a message to `super` instead of `self`
class Super
  def say_something
    puts "hello from super"
  end
end

class Child < Super
  def say_something
    puts "hello from child"
    super
  end
end
