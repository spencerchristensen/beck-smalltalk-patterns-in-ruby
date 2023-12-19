# frozen_string_literal: true

# Q: How do you code the default printing method?
# A: Override print to provide information about an objects structure to the programmer.
class DebugPrintingMethod
  def to_s
    'Overridden `to_s` to print specific debugging information.'
  end
end
