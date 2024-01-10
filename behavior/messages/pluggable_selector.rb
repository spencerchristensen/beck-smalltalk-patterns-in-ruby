# frozen_string_literal: true

# Q: How do you code simple instance specific behavior?
# A: Add a variable that contains a selector to be performed. Append "Message" to the Role Suggesting Instance Variable Name. Create a Composed Method that simply performs the selector.
class PluggableSelector
  attr_accesor :behavior_message

  def initialize(behavior_message)
    @behavior_message = behavior_message
  end

  def perform_message
    send(behavior_message)
  end

  def some_implemented_behavior
    puts 'Hello from performed message'
  end
end
