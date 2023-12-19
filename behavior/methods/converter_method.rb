# frozen_string_literal: true

# Q: How do you represent a simple conversion between two objects that share the same interface?
# A: Provide a method in the object to be converted that converts to the new object. Prepend 'as'.
class ConverterMethod
  def as_int; end
  def as_float; end
end
