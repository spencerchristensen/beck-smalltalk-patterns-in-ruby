# frozen_string_literal: true

# Q: How do you add to a superclass' implementation of a method?
# A: Override the method and send a message to `super` in the overriding method
class ExtendingSuper
  def say_something
    puts "hello from super"
  end
end

class Child < ExtendingSuper
  def say_something
    puts "hello from child"
    super
  end
end
