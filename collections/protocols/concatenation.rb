# frozen_string_literal: true

# Q: How do you put two collections together?
# A: Concatenate two collections by sending `,` to the first with the second as an argument.

array_one = [1, 2, 3]
array_two = [4, 5, 6]

combined = array_one + array_two
array_one.concat array_two

###

hash_one = { hello: 'world' }
hash_two = { foo: 'bar' }

combined = hash_one.merge hash_two
hash_one.merge! hash_two

###

set_one = Set.new [1, 2, 3]
set_two = Set.new [2, 3, 4]

combined = set_one + set_two
set_one.merge set_two
