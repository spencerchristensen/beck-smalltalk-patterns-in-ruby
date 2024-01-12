# frozen_string_literal: true

# Q: How do you provide access to an instance variable that holds a collection?
# A: Provide methods that are implemented with Delegation to the collection. To name the methods, add the name of the collection to the collection methods.
class CollectionAccessorMethod
  extend Forwardable

  def_delegators :@a_collection, :size, :<<, :map, :each

  def initialize(a_collection = [])
    @a_collection = a_collection
  end

  def custom_logic_on_collection
    @a_collection.map(&:object_id)
  end
end
