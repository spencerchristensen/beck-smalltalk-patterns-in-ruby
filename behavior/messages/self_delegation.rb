# frozen_string_literal: true

# Q: How do you implement delegation to an object that needs reference to the delegating object?
# A: Pass along the delegating object in an additional parameter called `for:`
class SelfDelegation
  def delegate_self
    some_var = Delegate.new
    some_var.send_message('hello world', sender: self)
  end

  def callback
    puts "sender callback called"
  end
end

class Delegate
  def send_message(msg, sender: nil)
    puts "#{sender.object_id} says #{msg}"
    sender.callback
  end
end
