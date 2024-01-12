# frozen_string_literal: true

# Q: How do you initialize an instance variable to its default value?
# A: Write a Getting Method for the variable. Initialize it if necessary with a Default Value Method.
class LazyInitialization
  def some_variable
    @some_variable ||= default_some_variable
  end

  def default_some_variable
    'hello world'
  end
end
