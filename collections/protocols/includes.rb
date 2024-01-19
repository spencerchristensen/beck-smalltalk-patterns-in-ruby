# frozen_string_literal: true

# Q: How do you search for a particular element in a collection?
# A: Send `includes` and pass the object to be searched for.

# O(n)
[].include? :hello

# O(1)
{}.include? :hello
{}.key? :hello

# O(1)
Set.new([:hello]).include? :hello
