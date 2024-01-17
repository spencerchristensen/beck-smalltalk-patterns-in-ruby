# frozen_string_literal: true

# Q: How do you gradually collect values to be used later in a method?
# A: When you need to collect or merge objects over a complex enumeration, use a temporary variable to hold the collection or merged value.
class CollectingTemporaryVariable
  def some_method
    collection = []

    (1..10).each do |num|
      collection << num if num.odd?
    end

    collection
  end
end
