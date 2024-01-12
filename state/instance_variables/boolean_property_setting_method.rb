# frozen_string_literal: true

# Q: How do you set a boolean property?
# A: Create two methods beginnign with "be". One has property name, the other the negation. Add "toggle" if the client doesn't want to know about the current state.
class BooleanPropertySettingMethod
  attr_writer :bool_value

  def initialize
    @bool_value = true
  end

  # idiomatic ruby uses `?` for boolean getters
  def bool_value?
    @bool_value
  end

  def toggle_bool_value
    @bool_value = !@bool_value
  end
end
