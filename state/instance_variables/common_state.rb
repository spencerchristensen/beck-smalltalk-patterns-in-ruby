# frozen_string_literal: true

# Q: How do you represent state, different valuyes for which will exist in all instances of a class?
# A: Declare an instance variable in the class.
class CommonState
  def initialize
    @an_instance_variable = 'hello world'
  end
end
