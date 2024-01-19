# frozen_string_literal: true

# Q: How do you optimize complex Detect or Select/Reject loops?
# A: Prepend `lookup` to the name of the expensive search or filter method. Add an instance variable holding a Dictionary to cache results. Name the variable by appending "Cache" to the name of the search. Make the parameters of the search the keys of the Dictionary and the result of the search the values.
class LookupCache
  def initialize
    @lookup_cache = {}
  end

  def complex_search(*args)
    cache_key = args.hash

    if @lookup_cache.key?(cache_key)
      puts 'cache hit'
      @lookup_cache[cache_key]
    else
      puts 'cache miss'
      @lookup_cache[cache_key] = perform_search(args)
    end
  end

  private

  def perform_search(*args)
    "hello world: #{args.hash}"
  end
end
