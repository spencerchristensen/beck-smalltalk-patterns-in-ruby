# frozen_string_literal: true

# Q: What do you call the parameter to an enumeration block?
# A: Call the parameter "each". If you have nested enumeration blocks, append a descriptive word to all parameter names.
class SimpleEnumerationParameter
  def some_method
    {
      a: [1, 2, 3],
      b: [4, 5, 6]
    }.each do |param|
      param.each { puts _1 }
    end
  end
end
