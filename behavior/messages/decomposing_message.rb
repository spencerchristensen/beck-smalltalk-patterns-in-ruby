# frozen_string_literal: true

# Q: How do you invoke parts of a computation?
# A: Send several messages to self.
class DecomposingMessage
  def control_activity
    control_init
    control_loop
    control_terminate
  end

  private

  def control_init; end

  def control_loop; end

  def control_terminate; end
end
