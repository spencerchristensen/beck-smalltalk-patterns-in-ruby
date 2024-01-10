# frozen_string_literal: true

# Q: How do you code complex Pluggable Behavior that is not quite worth its own class?
# A: Add an instance variable to store a block. Append "Block" to the Role Suggesting Instance Variable Name. Create a Composed Method to evaluate the Block to invoke the Pluggable Behavior.
class PluggableBehavior
  attr_accessor :behavior_block

  def initialize(&some_block)
    @behavior_block = some_block
  end

  def perform_block
    behavior_block&.call
  end
end
