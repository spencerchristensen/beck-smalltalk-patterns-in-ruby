# frozen_string_literal: true

# Q: How do you return a collection that is the collaborative result of several methods?
# A: Add a parameter that collects their results to all of the submethods.
class CollectingParameter
  def perform_action
    result = []
    action_one result
    action_two result
    puts result
  end

  def action_one(result)
    result << 'hello'
  end

  def action_two(result)
    result << 'world'
  end
end
