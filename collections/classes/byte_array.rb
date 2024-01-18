# frozen_string_literal: true

# Q: How do you code an Array of numbers in the range of 0..255 or 128..127?
# A: Use a ByteArray.
class ByteArray
  def str_to_8_bit_signed(str)
    str.unpack('c*')
  end
end
