# frozen_string_literal: true

# Q: How do you format blocks?
# A: Make blocks rectangular. Use the square brackets as the upper left and bottom right corners of the rectangle.
# Note that Ruby's blocks have the opposite cornering.
class RectangularBlock
  def some_method
    [1].each do |param|
      puts 0 + param
      puts 1 + param
    end

    ['hello'].each { puts _1 }
  end
end
