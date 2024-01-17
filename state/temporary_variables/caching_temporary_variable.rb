# frozen_string_literal: true

# Q: How do you improve the performance of a method?
# A: Set a temporary variable to the value of the expression as soon as it is valid. Use the variable instead of the expression in the remainder of the method.
class CachingTemporaryVariable
  def some_method
    cached_var = complex_operation
    collection = []
    (1..10).each do |num|
      collection << "#{cached_var} #{num}"
    end
    collection
  end

  def complex_operation
    sleep(10)
    'hello world'
  end
end
