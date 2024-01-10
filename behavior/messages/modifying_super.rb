# frozen_string_literal: true

# Q: How do you change part of the behavior of a superclass' method without modifying it?
# A: Override the method and invoke `super`, then execute the code to modify the results
class ModifyingSuper
  def say_something
    @greeting = 'hello'
    puts "Greetings from super: #{@greeting}"
  end
end

class Child < ModifyingSuper
  def say_something
    super
    @greeting += ' world'
    puts "Greetings from child: #{@greeting}"
  end
end
