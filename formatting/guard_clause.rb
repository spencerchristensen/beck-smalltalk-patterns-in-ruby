# frozen_string_literal: true

# Q: How do you format code that shouldn't execute if a condition holds?
# A: Format the one-branch conditional with an explicit return.
class GuardClause
  def some_method(param)
    return if param.empty?

    puts param
  end
end
