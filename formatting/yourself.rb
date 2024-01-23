# frozen_string_literal: true

# Q: How can you use the value of a Cascade if the last message doesn't return the receiver of the message?
# A: When you need the value of a Cascade and the last message does not return the receiver, append the message `yourself` to the Cascade.
# Ruby's `tap` returns the receiver, no need for `yourself`
class Yourself
  def some_method
    x = 'hello'.tap do |str|
      str.upcase!
      str << ' world'
    end

    puts x
  end
end
