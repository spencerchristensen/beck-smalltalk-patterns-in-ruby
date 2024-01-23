# frozen_string_literal: true

# Q: How do you format multiple messages to the same receiver?
# A: Use a Cascade to send several messages to the same receiver. Separate the messages with a semicolon. Put each message on its own line and indent one tab. Only use Cascades for messages with zero or one argument.
class Cascade
  def some_method
    'hello world'.upcase.reverse

    [1, 2, 3].tap do |arr|
      arr << 4
      arr.unshift 0
    end
  end
end
