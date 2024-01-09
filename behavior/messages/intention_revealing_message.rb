# frozen_string_literal: true

# Q: How do you communicate your intent when the implementation is simple?
# A: Send a message to send and name it so that it communicates what is to be done instead of how it is done.
class IntentionRevealingMessage
  def highlight
    reverse
  end

  def reverse; end
end
