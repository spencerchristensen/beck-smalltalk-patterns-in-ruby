# frozen_string_literal: true

# Q: How do you provide safe, general access to collection elements?
# A: Implement a method that executes a Block for each element of the collection.  Name the method by concatenating the name of the collection and "Do:"
class EnumerationMethod
  extends Forwardable

  def_delegators :@a_collection, :each

  def initialize(a_collection = [])
    @a_collection = a_collection
  end
end
