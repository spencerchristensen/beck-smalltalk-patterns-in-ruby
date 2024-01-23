# frozen_string_literal: true

# Q: How do you indent messages?
# A: Put zero or one argument messages on the same lines as their receiver. For messages with two or more keywords put each keyword/argument pair on its own line, indented one tab.
class IndentedControlFlow
  def method_one
    execute if true

    if true && true
      execute
    end
  end

  def execute; end
end
