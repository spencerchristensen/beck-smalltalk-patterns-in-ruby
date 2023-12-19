# frozen_string_literal: true

class MethodObject; end

# Q: How do you code a method where many lines of code share many arguments and temporary variables? Note that Composed Method alone cannot solve this.
class ObjectWithCumbersomeMethod
  def perform_action(param_one, param_two)
    puts "Step one with #{param_one} and #{param_two} on #{id}"
    puts "Step two with #{param_two} and #{param_one} on #{id}"
    puts "Step three with #{param_one} & #{param_two} on #{id}"
    tmp_var = param_one + param_two
    puts "Step four with #{tmp_var} on #{id}"
    # etc...
  end
end

# A:
# - Create a class named after the method.
# - Assign instance variables for:
#  - The original receiver of the method.
#  - The original arguments for the method.
#  - Any temporary variables that were being passed around.
# - Create a Constructor Method that initializes the receiver and method arguments.
# - Give it one method #compute and copy the original body of the method into this.
# - Replace the method with the new object and send it #compute
class PerformAction
  def initialize(receiver, param_one, param_two)
    @receiver = receiver
    @param_one = param_one
    @param_two = param_two
    @tmp_var = param_one + param_two
  end

  def compute
    step_one
    step_two
    step_three
    step_four
  end

  def step_one
    puts "Step one with #{@param_one} and #{@param_two} on #{@receiver.id}"
  end

  def step_two
    puts "Step two with #{@param_two} and #{@param_one} on #{@receiver.id}"
  end

  def step_three
    puts "Step three with #{@param_one} & #{@param_two} on #{@receiver.id}"
  end

  def step_four
    puts "Step four with #{@tmp_var} on #{@receiver.id}"
  end
end

some_obj = Class.new
action = PerformAction(some_obj, 'one', 'two')
action.compute
