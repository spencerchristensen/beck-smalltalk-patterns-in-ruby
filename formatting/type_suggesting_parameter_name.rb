# frozen_string_literal: true

# Q: What do you call a method parameter?
# A: Name parameters according to their most general expected class, preceded by "a" or "an".
class TypeSuggestingParameterName
  def method(_a_integer, _a_user); end
end
