# frozen_string_literal: true

# Q: What dco you name a new subclass?
# A: Name subclasses in your hierarchies by prepending an adjective to the superclass name.
class Collection; end
class OrderedCollection < Collection; end
class SortedCollection < Collection; end

# The two pieces of information you need to communicate are:
# - how the new class is the same
# - how the new class is different
