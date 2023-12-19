# frozen_string_literal: true

# Q: how do you convert information from one object's format to another?
# A: Convert from one objects format to another instead of overwhelming one object's protocol.
class Conversion
  def convert(conversion_type)
    case conversion_type
    when 'objects_have_similar_responsibilities'
      convert_similar_objects
    when 'objects_have_different_responsibilities'
      convert_different_objects
    else
      raise 'invalid conversion condition'
    end
  end

  private

  def convert_similar_objects
    require_relative 'converter_method'
    some_obj = ConverterMethod.new
    some_obj.as_int
  end

  def convert_different_objects
    require_relative 'converter_constructor_method'
    some_str = ConverterConstructorMethod.from_i 1234
    puts some_str
    some_int = ConverterConstructorMethod.from_s some_str
    puts some_int
  end
end
