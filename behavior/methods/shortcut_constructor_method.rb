# frozen_string_literal: true

# Q: What is the proper interface for when a Constructor Method becomes too wordy?
class WordyConstructorMethod
  def initialize(a_string, count)
    Array.new(count) { a_string }
  end
end

# A: Represent object creation as a method called upon one of the parameters passed to the Constructor Method.
class ShortcutConstructorMethod < String
  def to_array(count)
    Array.new(count) { self }
  end
end
