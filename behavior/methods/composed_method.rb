# frozen_string_literal: true

# Q: How do you divide your program into methods?
class ConfusedMethod
  def some_method
    # lots
    # of
    # logic
    # that
    # is
    # hard
    # to
    # follow
  end
end

# A: Divide your program into methods that perform one identifiable task.
class ComposedMethod
  def some_method
    step_one
    step_two
    step_three
  end

  private

  def step_one; end

  def step_two; end

  def step_three; end
end
